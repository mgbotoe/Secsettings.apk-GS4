.class public Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;
.super Ljava/lang/Object;
.source "TapAndHoldDelayProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "timeOutLength"

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, timeOutTitles:[Ljava/lang/String;
    const-string v0, ""

    .line 32
    .local v0, returnTitle:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 46
    const-string v2, "Tap and Hold Delay"

    const-string v3, "Unkown timeout length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 35
    goto :goto_0

    .line 37
    :pswitch_1
    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 41
    goto :goto_0

    .line 43
    :pswitch_3
    const/4 v2, 0x3

    aget-object v0, v1, v2

    .line 44
    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
