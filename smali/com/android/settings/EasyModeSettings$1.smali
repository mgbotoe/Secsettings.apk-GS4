.class Lcom/android/settings/EasyModeSettings$1;
.super Ljava/lang/Object;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EasyModeSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EasyModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/EasyModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$1;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 153
    sparse-switch p2, :sswitch_data_0

    .line 160
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 156
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings$1;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$1;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/EasyModeSettings;->access$100(Lcom/android/settings/EasyModeSettings;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    #setter for: Lcom/android/settings/EasyModeSettings;->mOlderPosition:I
    invoke-static {v0, v1}, Lcom/android/settings/EasyModeSettings;->access$002(Lcom/android/settings/EasyModeSettings;I)I

    .line 157
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings$1;->this$0:Lcom/android/settings/EasyModeSettings;

    #setter for: Lcom/android/settings/EasyModeSettings;->flag:Z
    invoke-static {v0, v2}, Lcom/android/settings/EasyModeSettings;->access$202(Lcom/android/settings/EasyModeSettings;Z)Z

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
