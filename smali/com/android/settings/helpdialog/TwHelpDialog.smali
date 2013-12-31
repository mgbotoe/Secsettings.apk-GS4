.class public Lcom/android/settings/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/helpdialog/TwHelpDialog$1;,
        Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const v0, 0x7f10003c

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    sget-object v0, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 43
    iput-boolean v3, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 44
    iput-boolean v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 63
    sget-object v0, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 65
    const v0, 0x7f091226

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 68
    iput-boolean v3, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setCancelable(Z)V

    .line 50
    invoke-virtual {p0, p3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const v6, 0x7f0b01b3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 159
    :goto_0
    return v2

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 95
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    .line 96
    iput-boolean v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 101
    :cond_1
    sget-object v4, Lcom/android/settings/helpdialog/TwHelpDialog$1;->$SwitchMap$com$android$settings$helpdialog$TwHelpDialog$TouchMode:[I

    iget-object v5, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    :cond_2
    :goto_1
    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    if-eq v0, v7, :cond_4

    .line 157
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_4
    move v2, v3

    .line 159
    goto :goto_0

    .line 103
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v4, :cond_6

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    if-nez v0, :cond_5

    .line 107
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, containerView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 111
    .end local v1           #containerView:Landroid/view/View;
    :cond_5
    if-ne v0, v2, :cond_2

    .line 112
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 113
    .restart local v1       #containerView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 118
    .end local v1           #containerView:Landroid/view/View;
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v4, :cond_2

    .line 119
    iget-object v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 125
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v4, :cond_8

    if-eq v0, v7, :cond_8

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    if-nez v0, :cond_7

    .line 129
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 130
    .restart local v1       #containerView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 133
    .end local v1           #containerView:Landroid/view/View;
    :cond_7
    if-ne v0, v2, :cond_2

    .line 134
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .restart local v1       #containerView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 140
    .end local v1           #containerView:Landroid/view/View;
    :cond_8
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v4, :cond_2

    if-eq v0, v7, :cond_2

    .line 141
    iget-object v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutMarginDialogCenter(III)V
    .locals 6
    .parameter "rightMargin"
    .parameter "topMargin"
    .parameter "bubbleTopMargin"

    .prologue
    const v5, 0x7f0b0003

    .line 186
    const v4, 0x7f0b0004

    invoke-virtual {p0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/helpdialog/TwTouchPunchView;

    move-object v3, v4

    check-cast v3, Lcom/android/settings/helpdialog/TwTouchPunchView;

    .line 187
    .local v3, touchPunchView:Lcom/android/settings/helpdialog/TwTouchPunchView;
    invoke-virtual {p0, v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object v1, v4

    check-cast v1, Landroid/widget/ImageView;

    .line 188
    .local v1, imageViewHelpPointer:Landroid/widget/ImageView;
    const v4, 0x7f0b01b4

    invoke-virtual {p0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    .line 190
    .local v0, bubbleSummary:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwTouchPunchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    .local v2, layoutParamHelp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 193
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    invoke-virtual {v3, v2}, Lcom/android/settings/helpdialog/TwTouchPunchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #layoutParamHelp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    .restart local v2       #layoutParamHelp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 202
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void
.end method

.method public setLayoutMarginDialogRight(IIII)V
    .locals 7
    .parameter "rightMargin"
    .parameter "topMargin"
    .parameter "bubbleTopMargin"
    .parameter "bubbleRightMargin"

    .prologue
    const v6, 0x7f0b0003

    const/16 v5, 0xb

    .line 163
    const v4, 0x7f0b0004

    invoke-virtual {p0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/helpdialog/TwTouchPunchView;

    move-object v3, v4

    check-cast v3, Lcom/android/settings/helpdialog/TwTouchPunchView;

    .line 164
    .local v3, touchPunchView:Lcom/android/settings/helpdialog/TwTouchPunchView;
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object v1, v4

    check-cast v1, Landroid/widget/ImageView;

    .line 165
    .local v1, imageViewHelpPointer:Landroid/widget/ImageView;
    const v4, 0x7f0b01b4

    invoke-virtual {p0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    .line 167
    .local v0, bubbleSummary:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwTouchPunchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 168
    .local v2, layoutParamHelp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 169
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 170
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    invoke-virtual {v3, v2}, Lcom/android/settings/helpdialog/TwTouchPunchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #layoutParamHelp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    .restart local v2       #layoutParamHelp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    sub-int v4, p1, p4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 180
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .parameter "pShowWrongInputToast"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 82
    return-void
.end method

.method public setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V
    .locals 0
    .parameter "touchTransparencyMode"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 74
    return-void
.end method
