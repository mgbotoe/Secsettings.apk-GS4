.class Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;
.super Ljava/lang/Object;
.source "RestoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iput p2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 298
    const/4 v1, 0x1

    .line 300
    .local v1, selected:Z
    iget v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->val$position:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    #getter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J
    invoke-static {v4}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$500(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    #getter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$600(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)Landroid/widget/RadioButton;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    #getter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$600(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 306
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 307
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget v3, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->val$position:I

    int-to-long v3, v3

    #setter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$502(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;J)J

    .line 308
    iget-object v3, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    move-object v2, p1

    check-cast v2, Landroid/widget/RadioButton;

    #setter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;
    invoke-static {v3, v2}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$602(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 313
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homesync/RestoreFragment$ListItem;

    .line 314
    .local v0, item:Lcom/android/settings/homesync/RestoreFragment$ListItem;
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget-object v2, v2, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v0}, Lcom/android/settings/homesync/RestoreFragment$ListItem;->getDate()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/settings/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/homesync/RestoreFragment;->access$302(Lcom/android/settings/homesync/RestoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    invoke-virtual {v0}, Lcom/android/settings/homesync/RestoreFragment$ListItem;->getSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget-object v2, v2, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    #getter for: Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment;->access$700(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 316
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget-object v2, v2, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    #getter for: Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment;->access$700(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    :cond_1
    :goto_2
    return-void

    .line 302
    .end local v0           #item:Lcom/android/settings/homesync/RestoreFragment$ListItem;
    :cond_2
    iget v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->val$position:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    #getter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J
    invoke-static {v4}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$500(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    #getter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$600(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    #getter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$600(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 304
    const/4 v1, 0x0

    goto :goto_0

    .line 310
    :cond_3
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;
    invoke-static {v2, v3}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$602(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 311
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    const-wide/16 v3, -0x1

    #setter for: Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->access$502(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;J)J

    goto :goto_1

    .line 319
    .restart local v0       #item:Lcom/android/settings/homesync/RestoreFragment$ListItem;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget-object v2, v2, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    #getter for: Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment;->access$700(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;->this$1:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget-object v2, v2, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    #getter for: Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment;->access$700(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method
