.class Lcom/android/settings/users/UserOptions$1;
.super Ljava/lang/Object;
.source "UserOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserOptions;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserOptions;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/users/UserOptions$1;->this$0:Lcom/android/settings/users/UserOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/users/UserOptions$1;->this$0:Lcom/android/settings/users/UserOptions;

    #calls: Lcom/android/settings/users/UserOptions;->removeThisUser()V
    invoke-static {v0}, Lcom/android/settings/users/UserOptions;->access$000(Lcom/android/settings/users/UserOptions;)V

    .line 130
    return-void
.end method
