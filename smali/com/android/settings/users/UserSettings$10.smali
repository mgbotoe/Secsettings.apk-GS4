.class Lcom/android/settings/users/UserSettings$10;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$10;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$10;->this$0:Lcom/android/settings/users/UserSettings;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V
    invoke-static {v1, v0}, Lcom/android/settings/users/UserSettings;->access$1500(Lcom/android/settings/users/UserSettings;I)V

    .line 627
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
