.class Lcom/android/settings/myprofile/ClockActivity$5;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myprofile/ClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/ClockActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/ClockActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 269
    if-eqz p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/ClockActivity;->setDefaultImage()V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    #getter for: Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/myprofile/ClockActivity;->access$700(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 272
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/ClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    #getter for: Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/myprofile/ClockActivity;->access$800(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 274
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/ClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 275
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    #getter for: Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/myprofile/ClockActivity;->access$900(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 276
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/ClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
