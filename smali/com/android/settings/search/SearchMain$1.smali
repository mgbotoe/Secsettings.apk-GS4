.class Lcom/android/settings/search/SearchMain$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchMain;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchMain;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/search/SearchMain$1;->this$0:Lcom/android/settings/search/SearchMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "SearchMain"

    const-string v4, "android.settings.SETTING_SEARCH_DB_UPDATE is received"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    .local v1, extra:Landroid/os/Bundle;
    const-string v3, "lock"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 86
    .local v2, setValue:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/android/settings/search/SearchMain;->access$502(Z)Z

    .line 87
    iget-object v3, p0, Lcom/android/settings/search/SearchMain$1;->this$0:Lcom/android/settings/search/SearchMain;

    #calls: Lcom/android/settings/search/SearchMain;->displayProgressDialog()V
    invoke-static {v3}, Lcom/android/settings/search/SearchMain;->access$600(Lcom/android/settings/search/SearchMain;)V

    .line 89
    .end local v1           #extra:Landroid/os/Bundle;
    .end local v2           #setValue:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method
