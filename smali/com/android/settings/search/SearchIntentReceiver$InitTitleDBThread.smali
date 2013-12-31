.class Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;
.super Ljava/lang/Thread;
.source "SearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitTitleDBThread"
.end annotation


# instance fields
.field private locale_change:Z

.field private mSearchManager:Lcom/android/settings/search/SettingSearchManager;

.field final synthetic this$0:Lcom/android/settings/search/SearchIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/SearchIntentReceiver;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    iput-object p1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 110
    iput-boolean v2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    .line 112
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    #getter for: Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/search/SearchIntentReceiver;->access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    .line 115
    iput-boolean v2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/SearchIntentReceiver;Z)V
    .locals 2
    .parameter
    .parameter "value"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    .line 112
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    #getter for: Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/search/SearchIntentReceiver;->access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    .line 119
    iput-boolean p2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    :goto_0
    invoke-static {}, Lcom/android/settings/search/SearchIntentReceiver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {v3}, Lcom/android/settings/search/SearchIntentReceiver;->access$202(Z)Z

    .line 126
    invoke-static {v4}, Lcom/android/settings/search/SearchIntentReceiver;->access$302(Z)Z

    .line 128
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "SearchIntentReceiver"

    const-string v2, "InterruptedException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {v3}, Lcom/android/settings/search/SearchIntentReceiver;->access$102(Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/settings/search/SearchIntentReceiver;->access$202(Z)Z

    .line 134
    const-string v1, "SearchIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitTitleDBThread start --> mDoingInitTitleDB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/search/SearchIntentReceiver;->access$100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v1}, Lcom/android/settings/search/SettingSearchManager;->changed_language()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    new-instance v1, Lcom/android/settings/search/SettingHeaderXmlParser;

    iget-object v2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    #getter for: Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/search/SearchIntentReceiver;->access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/search/SettingHeaderXmlParser;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/search/SearchIntentReceiver;->xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;

    .line 137
    sget-object v1, Lcom/android/settings/search/SearchIntentReceiver;->xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;

    iget-boolean v2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SettingHeaderXmlParser;->initTitleDB(Z)V

    .line 139
    :cond_1
    invoke-static {v4}, Lcom/android/settings/search/SearchIntentReceiver;->access$102(Z)Z

    .line 140
    const-string v1, "SearchIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitTitleDBThread end --> mDoingInitTitleDB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/search/SearchIntentReceiver;->access$100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v1, "SearchIntentReceiver"

    const-string v2, "LOCALE_CHANGED call search setting db finish!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v4}, Lcom/android/settings/search/SearchIntentReceiver;->access$202(Z)Z

    .line 143
    return-void
.end method
