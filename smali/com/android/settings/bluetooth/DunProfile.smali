.class final Lcom/android/settings/bluetooth/DunProfile;
.super Ljava/lang/Object;
.source "DunProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/DunProfile$1;,
        Lcom/android/settings/bluetooth/DunProfile$DunServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothDun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/DunProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DunProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 104
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/android/settings/bluetooth/DunProfile$DunServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/DunProfile$DunServiceListener;-><init>(Lcom/android/settings/bluetooth/DunProfile;Lcom/android/settings/bluetooth/DunProfile$1;)V

    const/16 v2, 0x67

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 106
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/settings/bluetooth/DunProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/DunProfile;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/DunProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DunProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 117
    iget-object v3, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 124
    :goto_0
    return v3

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 121
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothDun;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 124
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDun;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDun;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 183
    sget-boolean v1, Lcom/android/settings/bluetooth/DunProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "DunProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-eqz v1, :cond_1

    .line 186
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x67

    iget-object v3, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DunProfile"

    const-string v2, "Error cleaning up DUN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DunProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDun;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 179
    const v0, 0x7f020164

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 161
    const v0, 0x7f09026b

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x7

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 145
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DunProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 166
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 174
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 168
    :pswitch_1
    const v1, 0x7f090286

    goto :goto_0

    .line 171
    :pswitch_2
    const v1, 0x7f090280

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DunProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DunProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "DUN"

    return-object v0
.end method
