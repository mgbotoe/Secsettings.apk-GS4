.class public Lcom/android/settings/nfc/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private checkedTextView:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/nfc/CheckableRelativeLayout;->checkedTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/CheckableRelativeLayout;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 19
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 21
    invoke-virtual {p0}, Lcom/android/settings/nfc/CheckableRelativeLayout;->getChildCount()I

    move-result v0

    .line 22
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/CheckableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 24
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/CheckedTextView;

    if-eqz v3, :cond_0

    .line 25
    check-cast v2, Landroid/widget/CheckedTextView;

    .end local v2           #view:Landroid/view/View;
    iput-object v2, p0, Lcom/android/settings/nfc/CheckableRelativeLayout;->checkedTextView:Landroid/widget/CheckedTextView;

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/nfc/CheckableRelativeLayout;->checkedTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/settings/nfc/CheckableRelativeLayout;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 40
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nfc/CheckableRelativeLayout;->checkedTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/nfc/CheckableRelativeLayout;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 47
    :cond_0
    return-void
.end method
