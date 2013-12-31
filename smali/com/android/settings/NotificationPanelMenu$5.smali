.class Lcom/android/settings/NotificationPanelMenu$5;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "NotificationPanelMenu"

    const-string v1, "onActivityCreated() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/NotificationPanelMenu$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationPanelMenu$5$1;-><init>(Lcom/android/settings/NotificationPanelMenu$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 268
    return-void
.end method
