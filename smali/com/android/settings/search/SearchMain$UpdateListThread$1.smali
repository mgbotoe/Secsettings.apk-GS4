.class Lcom/android/settings/search/SearchMain$UpdateListThread$1;
.super Ljava/lang/Object;
.source "SearchMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/SearchMain$UpdateListThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/search/SearchMain$UpdateListThread;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchMain$UpdateListThread;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/search/SearchMain$UpdateListThread$1;->this$1:Lcom/android/settings/search/SearchMain$UpdateListThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$100()Lcom/android/settings/search/SettingSearchManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settings/search/SearchMain;->access$102(Lcom/android/settings/search/SettingSearchManager;)Lcom/android/settings/search/SettingSearchManager;

    .line 67
    :cond_0
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$300()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, ""

    invoke-static {v0}, Lcom/android/settings/search/SearchMain;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    :cond_1
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$100()Lcom/android/settings/search/SettingSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/SearchMain;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 72
    iget-object v0, p0, Lcom/android/settings/search/SearchMain$UpdateListThread$1;->this$1:Lcom/android/settings/search/SearchMain$UpdateListThread;

    iget-object v0, v0, Lcom/android/settings/search/SearchMain$UpdateListThread;->this$0:Lcom/android/settings/search/SearchMain;

    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$300()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/search/SearchMain;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/search/SearchMain;->access$400(Lcom/android/settings/search/SearchMain;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 73
    return-void
.end method
