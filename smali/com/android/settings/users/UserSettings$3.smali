.class Lcom/android/settings/users/UserSettings$3;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->loadProfile()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .parameter "values"

    .prologue
    .line 306
    iget-object v4, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/settings/users/UserSettings;->access$700(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 307
    .local v3, user:Landroid/content/pm/UserInfo;
    iget-object v4, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    :cond_0
    iget-object v4, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    #calls: Lcom/android/settings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    invoke-static {v4, v3}, Lcom/android/settings/users/UserSettings;->access$800(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)V

    .line 310
    :cond_1
    iget-object v4, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    const-string v5, "phone"

    #calls: Lcom/android/settings/users/UserSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/android/settings/users/UserSettings;->access$900(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 311
    .local v0, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    #calls: Lcom/android/settings/users/UserSettings;->getProfileName()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/users/UserSettings;->access$1000(Lcom/android/settings/users/UserSettings;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, profileName:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    :cond_2
    iget-object v2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 316
    :cond_3
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 298
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$3;->this$0:Lcom/android/settings/users/UserSettings;

    #calls: Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V

    .line 302
    return-void
.end method
