.class Lcom/android/settings/myprofile/ClockWidgetPreference$2;
.super Ljava/lang/Object;
.source "ClockWidgetPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myprofile/ClockWidgetPreference;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/ClockWidgetPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/ClockWidgetPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/myprofile/ClockWidgetPreference$2;->this$0:Lcom/android/settings/myprofile/ClockWidgetPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/android/settings/myprofile/ClockWidgetPreference$2;->this$0:Lcom/android/settings/myprofile/ClockWidgetPreference;

    #getter for: Lcom/android/settings/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/myprofile/ClockWidgetPreference;->access$100(Lcom/android/settings/myprofile/ClockWidgetPreference;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/ClockWidgetPreference$2;->this$0:Lcom/android/settings/myprofile/ClockWidgetPreference;

    #calls: Lcom/android/settings/myprofile/ClockWidgetPreference;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/myprofile/ClockWidgetPreference;->access$000(Lcom/android/settings/myprofile/ClockWidgetPreference;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 183
    return-void
.end method
