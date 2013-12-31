.class Lcom/android/settings/NotificationPanelMenu$4;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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
    .line 181
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 184
    const/4 v1, 0x1

    .line 185
    .local v1, retVal:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 187
    .local v0, dragEvent:I
    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    :pswitch_0
    return v1

    .line 189
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #calls: Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/settings/NotificationPanelMenu;->access$900(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #calls: Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v2}, Lcom/android/settings/NotificationPanelMenu;->access$800(Lcom/android/settings/NotificationPanelMenu;)V

    goto :goto_0

    .line 194
    :pswitch_2
    const/high16 v2, 0x3f80

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 202
    :pswitch_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
