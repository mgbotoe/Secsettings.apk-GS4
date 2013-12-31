.class Lcom/android/settings/homesync/RestoreFragment$ListItem;
.super Ljava/lang/Object;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItem"
.end annotation


# instance fields
.field private Date:Ljava/lang/String;

.field private Size:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/homesync/RestoreFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/homesync/RestoreFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "_Date"
    .parameter "_Size"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->Date:Ljava/lang/String;

    .line 345
    iput-object p3, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->Size:Ljava/lang/String;

    .line 346
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->Size:Ljava/lang/String;

    return-object v0
.end method
