.class Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
.super Ljava/lang/Object;
.source "SearchDirectSettingUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchDirectSettingUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchDirectDBInfo"
.end annotation


# instance fields
.field DBName:Ljava/lang/String;

.field DBType:I

.field dependencyKey:Ljava/lang/String;

.field keyName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/search/SearchDirectSettingUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchDirectSettingUpdate;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 842
    iput-object p1, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->this$0:Lcom/android/settings/search/SearchDirectSettingUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 843
    iput-object v1, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    .line 844
    iput-object v1, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 845
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBType:I

    .line 846
    iput-object v1, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    return-void
.end method
