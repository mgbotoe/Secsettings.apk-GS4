.class public Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ColorBlindMultiUserReceiver.java"


# instance fields
.field public final CVD_DEUTERAN:I

.field public final CVD_NORMAL:I

.field public final CVD_PROTAN:I

.field public final CVD_TRITAN:I

.field private final TAG:Ljava/lang/String;

.field iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field integerArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "ColorBlindMultiUserReceiver"

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->CVD_PROTAN:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->CVD_DEUTERAN:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->CVD_TRITAN:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->CVD_NORMAL:I

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->integerArray:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 38
    .local v8, action:Ljava/lang/String;
    const-string v2, "ColorBlindMultiUserReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorBlindMultiUserReceiver - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind_test"

    const/4 v4, 0x3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 43
    .local v12, testCheck:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind"

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 46
    .local v11, isSetting:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_contrast"

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 49
    .local v10, isNegativeCheck:I
    const/4 v2, 0x1

    if-ne v12, v2, :cond_2

    const/4 v2, 0x1

    if-ne v11, v2, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind_cvdtype"

    const/4 v4, 0x3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 53
    .local v1, CVDType:I
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind_cvdseverity"

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    .line 56
    .local v6, CVDSeverity:F
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind_user_parameter"

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v7

    .line 59
    .local v7, UserParameter:F
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ldmc/cvd/cvdcalculator/CVDCalculator;

    invoke-direct {v0}, Ldmc/cvd/cvdcalculator/CVDCalculator;-><init>()V

    .line 61
    .local v0, cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;
    float-to-double v2, v6

    float-to-double v4, v7

    invoke-virtual/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/CVDCalculator;->getRGBCMY(IDD)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->integerArray:[I

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->integerArray:[I

    invoke-interface {v2, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0           #cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;
    .end local v1           #CVDType:I
    .end local v6           #CVDSeverity:F
    .end local v7           #UserParameter:F
    :cond_1
    :goto_0
    return-void

    .line 64
    .restart local v0       #cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;
    .restart local v1       #CVDType:I
    .restart local v6       #CVDSeverity:F
    .restart local v7       #UserParameter:F
    :catch_0
    move-exception v9

    .line 65
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0           #cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;
    .end local v1           #CVDType:I
    .end local v6           #CVDSeverity:F
    .end local v7           #UserParameter:F
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v2, 0x1

    if-ne v10, v2, :cond_3

    .line 71
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v9

    .line 74
    .restart local v9       #e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->integerArray:[I

    invoke-interface {v2, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 80
    :catch_2
    move-exception v9

    .line 82
    .restart local v9       #e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
