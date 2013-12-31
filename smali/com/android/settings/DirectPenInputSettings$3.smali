.class Lcom/android/settings/DirectPenInputSettings$3;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 219
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 220
    .local v2, writingBuddyOn:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 222
    .local v0, MagnificationResult:Z
    :goto_1
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$400(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v5}, Lcom/android/settings/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 223
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v6, 0x7f090ce8

    invoke-virtual {v5, v6}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v6, 0x7f090ce0

    invoke-virtual {v5, v6}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v6, 0x7f090ce1

    invoke-virtual {v5, v6}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v4, v1, v3}, Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    .line 232
    .end local v1           #message:Ljava/lang/String;
    :goto_2
    return-void

    .end local v0           #MagnificationResult:Z
    .end local v2           #writingBuddyOn:Z
    :cond_1
    move v2, v4

    .line 219
    goto :goto_0

    .restart local v2       #writingBuddyOn:Z
    :cond_2
    move v0, v4

    .line 220
    goto :goto_1

    .line 228
    .restart local v0       #MagnificationResult:Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    if-ne p2, v3, :cond_4

    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    iget-object v3, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #calls: Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V
    invoke-static {v3}, Lcom/android/settings/DirectPenInputSettings;->access$500(Lcom/android/settings/DirectPenInputSettings;)V

    goto :goto_2

    :cond_4
    move v3, v4

    .line 228
    goto :goto_3
.end method
