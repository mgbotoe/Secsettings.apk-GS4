.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;,
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mTemporaryKey:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    .line 237
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "deviceName"
    .parameter "svc"

    .prologue
    const/4 v7, 0x0

    .line 153
    const-string v4, "BluetoothAuthorizeDialog"

    const-string v5, "createView"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040023

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 157
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b0074

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    .local v1, msgView:Landroid/widget/TextView;
    const v4, 0x7f090ed5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v4, :cond_0

    .line 161
    const v4, 0x7f0b0075

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 162
    .local v0, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0b0076

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, textview:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 165
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v2           #textview:Landroid/widget/TextView;
    :cond_0
    return-object v3
.end method

.method private getServiceName(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 2
    .parameter "uuid"

    .prologue
    const v1, 0x7f090eda

    .line 227
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isPbap(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090edc

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isOpp(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090edb

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isFtp(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090ed9

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isMap(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isMns(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_4
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isMse(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_5
    const v0, 0x7f090edf

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAutoReply()Z
    .locals 5

    .prologue
    .line 173
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v2, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 175
    :cond_0
    const v2, 0x7f0b0075

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 176
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 177
    .local v1, isChecked:Z
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onAuthorize()V
    .locals 4

    .prologue
    .line 182
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onAuthorize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    .line 184
    return-void
.end method

.method private onDecline()V
    .locals 4

    .prologue
    .line 187
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onDecline"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    .line 189
    return-void
.end method

.method private quitActivity()V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 221
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "Wake Lock released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 224
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 192
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    packed-switch p2, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 195
    :pswitch_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 197
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "Wake Lock released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onAuthorize()V

    goto :goto_0

    .line 203
    :pswitch_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "Wake Lock released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-string v7, "BluetoothAuthorizeDialog"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 96
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.device.action.ACTION_AUTHORIZE_REQUEST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 98
    const-string v7, "BluetoothAuthorizeDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: Unknown intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 104
    const-string v7, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 106
    new-instance v7, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    .line 108
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v1, intFltr:Landroid/content/IntentFilter;
    const-string v7, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 116
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v7, :cond_2

    .line 117
    const-string v7, "BluetoothAuthorizeDialog"

    const-string v8, "LocalBluetoothManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    .line 122
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    .line 124
    sget-object v7, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 125
    .local v5, pm:Landroid/os/PowerManager;
    const v7, 0x3000000a

    const-string v8, "BluetoothAuthorizeDialog"

    invoke-virtual {v5, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    sput-object v7, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 129
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getServiceName(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, svc:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 134
    .local v4, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v7, 0x108009b

    iput v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 135
    const v7, 0x7f090ed4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 136
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 138
    const v7, 0x7f090ee0

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 139
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    const v7, 0x7f090ee1

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 141
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->setupAlert()V

    .line 145
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 146
    .local v3, isScreenOn:Z
    if-nez v3, :cond_0

    .line 147
    sget-object v7, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 148
    const-string v7, "BluetoothAuthorizeDialog"

    const-string v8, "Wake Lock acquired"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 215
    return-void
.end method
