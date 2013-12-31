.class Lcom/android/settings/guide/GuideFragment$WrappedEnabler;
.super Ljava/lang/Object;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrappedEnabler"
.end annotation


# instance fields
.field private mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

.field private mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/GuideFragment$GuideModes;Ljava/lang/Object;)V
    .locals 2
    .parameter "type"
    .parameter "enabler"

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 168
    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 170
    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 180
    iput-object p1, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 182
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 201
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local p2
    :cond_1
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither BluetoothEnabler or WifiEnabler was passed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_0
    check-cast p2, Lcom/android/settings/bluetooth/BluetoothEnabler;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    goto :goto_0

    .line 194
    .restart local p2
    :pswitch_1
    check-cast p2, Lcom/android/settings/wifi/WifiEnabler;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V
    .locals 2
    .parameter "guider"

    .prologue
    .line 210
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
