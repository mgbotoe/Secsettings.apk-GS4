.class Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;Landroid/content/Context;Landroid/content/ContentResolver;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    iput-boolean p4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "args"

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 591
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    iget-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 596
    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 598
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 609
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 586
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
