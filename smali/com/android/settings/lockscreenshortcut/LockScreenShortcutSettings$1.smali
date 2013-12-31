.class Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenShortcutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$502(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$602(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 212
    :cond_1
    const-string v0, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->SmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MakeShortcutList(Ljava/util/List;)V

    .line 217
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$800(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$900(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)V

    .line 223
    :cond_3
    :goto_1
    return-void

    .line 214
    :cond_4
    const-string v0, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->NmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MakeShortcutList(Ljava/util/List;)V

    goto :goto_0

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$002(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    goto :goto_1
.end method
