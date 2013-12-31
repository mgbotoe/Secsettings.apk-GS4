.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"


# static fields
.field public static canLaunchQuickBtView:Z

.field public static mMyPlacesCalled:Z

.field private static mScanBtn:Landroid/widget/Button;


# instance fields
.field private Helpscanbroadcast:Landroid/content/BroadcastReceiver;

.field fromHelp:Z

.field private mActivityResultDone:Z

.field private mBTEnableDisplayed:Z

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mStartScanOnResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/DevicePickerActivity;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$200()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput-object p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object p0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 273
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090236

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 276
    const v4, 0x7f0900e4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    const v4, 0x7f090173

    new-instance v5, Lcom/android/settings/bluetooth/DevicePickerActivity$4;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$4;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 285
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040025

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, dialoglayout:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 291
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$5;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity$5;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 309
    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity$6;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 316
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 317
    return-void
.end method


# virtual methods
.method public ScanBtnStateUpdate(Z)V
    .locals 2
    .parameter "scanState"

    .prologue
    .line 321
    sget-object v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 322
    if-eqz p1, :cond_1

    .line 323
    sget-object v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f090791

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    sget-object v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 198
    .local v0, mBluetoothState:I
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 200
    if-nez p1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-nez p1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    if-ne v0, v1, :cond_1

    .line 83
    sput-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    .line 88
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->initialize()V

    .line 94
    :goto_1
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_3

    .line 96
    const-string v0, "DevicePickerActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_2
    return-void

    .line 84
    :cond_1
    const-string v1, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    if-ne v0, v1, :cond_0

    .line 85
    sput-boolean v2, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    goto :goto_0

    .line 91
    :cond_2
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setContentView(I)V

    goto :goto_1

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    const-string v1, "fromHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    if-eqz v0, :cond_4

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    .line 130
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    .line 140
    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mStartScanOnResume:Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    :cond_0
    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onDestroy of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 254
    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onPause of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 257
    return-void
.end method

.method public onPostResume()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 175
    const-string v1, "DevicePickerActivity"

    const-string v2, "onPostResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mStartScanOnResume:Z

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mStartScanOnResume:Z

    .line 179
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$2;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    .end local v0           #t:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    sput-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 150
    const-string v0, "DevicePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onResume with mBTEnableDisplayed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 166
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    goto :goto_0
.end method

.method public showHelpDialog(II)V
    .locals 6
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 213
    .local v2, created:Z
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v4, :cond_0

    .line 214
    new-instance v4, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v4, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 215
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 216
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 217
    const/4 v2, 0x1

    .line 220
    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v5, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 224
    .local v1, bubbleView:Landroid/view/View;
    const v4, 0x7f0b0007

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 226
    .local v3, summary:Landroid/widget/TextView;
    if-nez v3, :cond_1

    .line 227
    const v4, 0x7f0b01b4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #summary:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 230
    .restart local v3       #summary:Landroid/widget/TextView;
    :cond_1
    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 234
    const v4, 0x7f0b0002

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 236
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 237
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 238
    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$3;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_3
    if-eqz v2, :cond_4

    .line 247
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 249
    :cond_4
    return-void
.end method
