.class Lcom/android/settings/AccessibilitySettings$5;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$5;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$5;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 427
    .local v0, magnificationEnabled:Z
    :cond_0
    if-eqz v0, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$5;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$600(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f09084b

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$5;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$600(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f09084c

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method
