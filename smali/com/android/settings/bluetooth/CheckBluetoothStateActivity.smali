.class public final Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# static fields
.field private static mDialogExist:Z


# instance fields
.field private expectingBluetoothOn:Z

.field private isBtEnableDialog:Z

.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    .line 67
    new-instance v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private launchDevicePicker()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 169
    const-string v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "launchDevicePicker "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 172
    .local v4, in:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, btIntent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 175
    .local v7, needAuth:Z
    const-string v8, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v8, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, filterType:I
    const-string v8, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string v8, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 181
    .local v3, fromHeadsetActivity:Z
    const-string v8, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v8, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, launchPackage:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 185
    const-string v8, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_0
    const-string v8, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, launchClass:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 190
    const-string v8, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    iget-object v8, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v8, :cond_2

    .line 196
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 202
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private processEnableResult()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method private showEnableDialog()V
    .locals 7

    .prologue
    .line 205
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090f09

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 208
    const v5, 0x7f090f0c

    new-instance v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    const v5, 0x7f090f0d

    new-instance v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 232
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04003e

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 233
    .local v3, dialoglayout:Landroid/view/View;
    const v5, 0x7f0b00b2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 234
    .local v2, contentView:Landroid/widget/TextView;
    const v5, 0x7f090f0a

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 240
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 254
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 255
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 256
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v3, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-boolean v3, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sput-boolean v6, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    .line 90
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    .local v2, t:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 103
    const-string v3, "enterprise_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 105
    .local v0, EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    .line 107
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    const-string v3, "CheckBluetoothStateActivity"

    const-string v4, "onCreate Bluetooth disable"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const v3, 0x7f090eea

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 115
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_3

    .line 116
    const-string v3, "CheckBluetoothStateActivity"

    const-string v4, "Bluetooth is not supported on this device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_3
    if-eqz p1, :cond_4

    .line 121
    const-string v3, "isBtEnableDialog"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    .line 124
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 126
    if-eqz p1, :cond_5

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    if-eqz v3, :cond_0

    .line 128
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    .line 131
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->showEnableDialog()V

    goto/16 :goto_0

    .line 133
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 268
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 274
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 261
    const-string v0, "isBtEnableDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    return-void
.end method
