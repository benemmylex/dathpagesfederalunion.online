<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/configuration/config.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/configuration/Function/userClass.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/configuration/Function/Function.php");

// Define TransType function
function TransType($transac)
{
    if ($transac['payment_account'] == 'current_account') {
        return 'Current Account';
    }

    if ($transac['payment_account'] == 'savings_account') {
        return 'Savings Account';
    }
}

// Define TransStatus function
function TransStatus($transac)
{
    if ($transac['trans_status'] == 'completed') {
        return '<span class="badge badge-primary inv-status">Completed</span>';
    }

    if ($transac['trans_status'] == 'pending') {
        return '<span class="badge badge-info inv-status">Pending</span>';
    }
    if ($transac['trans_status'] == 'processing') {
        return '<span class="badge badge-warning inv-status">Processing</span>';
    }
    if ($transac['trans_status'] == 'failed') {
        return '<span class="badge badge-danger inv-status">Failed</span>';
    }
}

// Define userStatus function
function userStatus($row)
{
    if ($row['acct_status'] === 'active') {
        return 'ACTIVE';
    }

    if ($row['acct_status'] === 'hold') {
        return 'ON HOLD';
    }
}

// Connect to the database
$conn = dbConnect();
$message = new message();

// Fetch settings
$sql = "SELECT * FROM settings WHERE id ='1'";
$stmt = $conn->prepare($sql);
$stmt->execute();
$page = $stmt->fetch(PDO::FETCH_ASSOC);

if ($page !== false) {
    $title = $page['website_name'];
    $website_email = $page['website_email'];
} else {
    error_log("Settings data could not be fetched.");
    $title = "Default Title";
    $website_email = "default@example.com";
}

// Fetch user account details
$viesConn = "SELECT * FROM accounts WHERE internetid=:internetid";
$stmt = $conn->prepare($viesConn);
$stmt->execute([':internetid' => $_SESSION['internetid']]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);

if ($row !== false) {
    $internetid = $row['internetid'];
    $full_name = $row['firstname'] . " " . $row['lastname'];
    $acct_stat = $row['acct_status'];
    $TotalBalance = $row['savings_balance'] + $row['current_balance'];
    $LoanBalance = $row['loan_balance'];
    $CurrentBalance = $row['current_balance'];
    $SavingsBalance = $row['savings_balance'];
    $fullName = $row['firstname'] . " " . $row['lastname'];
    $email = $row['acct_email'];
    $currency = $row['acct_currency'];
} else {
    error_log("User account data could not be fetched for internetid: " . $_SESSION['internetid']);
}

// Fetch audit logs
$sql = "SELECT * FROM audit_logs ORDER BY datenow DESC";
$stmt = $conn->prepare($sql);
$stmt->execute();
$logs = $stmt->fetch(PDO::FETCH_ASSOC);

if ($logs !== false) {
    $device = $logs['device'];
    $ipAddress = $logs['ipAddress'];
    $datenow = $logs['datenow'];
} else {
    error_log("Audit logs could not be fetched.");
}

// Fetch payment list
$sql3 = "SELECT * FROM list_payment WHERE internetid=:internetid";
$stmt44 = $conn->prepare($sql3);
$stmt44->execute([':internetid' => $_SESSION['internetid']]);
$list_payment = $stmt44->fetch(PDO::FETCH_ASSOC);

// Fetch last transaction
$sql = "SELECT * FROM transactions WHERE internetid =:internetid ORDER BY trans_id DESC LIMIT 1";
$stmt = $conn->prepare($sql);
$stmt->execute(['internetid' => $_SESSION['internetid']]);
$transac = $stmt->fetch(PDO::FETCH_ASSOC);

$TransType = false;
if ($transac !== false) {
    $TransType = TransType($transac);
}

// Fetch ticket status
$sql = "SELECT * FROM ticket WHERE internetid =:internetid";
$stmt = $conn->prepare($sql);
$stmt->execute(['internetid' => $_SESSION['internetid']]);
$result44 = $stmt->fetch(PDO::FETCH_ASSOC);

$TickeStatus = false;
if ($result44 !== false) {
    $TickeStatus = TickeStatus($result44);
}

// Fetch card details
$sql2 = "SELECT * FROM card WHERE internetid=:internetid";
$cardstmt = $conn->prepare($sql2);
$cardstmt->execute(['internetid' => $_SESSION['internetid']]);
$cardCheck = $cardstmt->fetch(PDO::FETCH_ASSOC);

// Fetch temporary transaction
$sql = "SELECT * FROM temp_dumps WHERE internetid =:internetid ORDER BY trans_id DESC LIMIT 1";
$stmt = $conn->prepare($sql);
$stmt->execute(['internetid' => $_SESSION['internetid']]);
$temp_trans = $stmt->fetch(PDO::FETCH_ASSOC);

if ($temp_trans !== false) {
    $TempBalance = $temp_trans['amount'];
} else {
    error_log("No temporary transactions found for internetid: " . $_SESSION['internetid']);
}

// Determine user status
$userStatus = false;
if ($row !== false) {
    $userStatus = userStatus($row);
}
