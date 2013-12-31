.class Lcom/android/settings/NotificationPanelMenu$6$2;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationPanelMenu$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NotificationPanelMenu$6;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu$6;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$6$2;->this$1:Lcom/android/settings/NotificationPanelMenu$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$6$2;->this$1:Lcom/android/settings/NotificationPanelMenu$6;

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu$6;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #calls: Lcom/android/settings/NotificationPanelMenu;->resetPanel()V
    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1200(Lcom/android/settings/NotificationPanelMenu;)V

    .line 708
    return-void
.end method
