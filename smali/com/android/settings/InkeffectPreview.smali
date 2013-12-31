.class public Lcom/android/settings/InkeffectPreview;
.super Landroid/app/Activity;
.source "InkeffectPreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mInkcolorItem:[Ljava/lang/String;


# instance fields
.field private bClick:Z

.field private bRotation:Z

.field private clickInkColor:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInkEffectColor:I

.field private mInkEffectHelptext:Landroid/widget/TextView;

.field mInkEffectdrawble:[I

.field mInkEffectdrawble_h:[I

.field private mListView:Landroid/widget/ListView;

.field private productModel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    .line 48
    iput v0, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    .line 53
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->productModel:Ljava/lang/String;

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    return-void

    .line 55
    nop

    :array_0
    .array-data 0x4
        0x81t 0x2t 0x2t 0x7ft
        0x85t 0x2t 0x2t 0x7ft
        0x83t 0x2t 0x2t 0x7ft
        0x7bt 0x2t 0x2t 0x7ft
        0x77t 0x2t 0x2t 0x7ft
        0x7ft 0x2t 0x2t 0x7ft
        0x87t 0x2t 0x2t 0x7ft
        0x79t 0x2t 0x2t 0x7ft
        0x7dt 0x2t 0x2t 0x7ft
    .end array-data

    .line 67
    :array_1
    .array-data 0x4
        0x82t 0x2t 0x2t 0x7ft
        0x86t 0x2t 0x2t 0x7ft
        0x84t 0x2t 0x2t 0x7ft
        0x7ct 0x2t 0x2t 0x7ft
        0x78t 0x2t 0x2t 0x7ft
        0x80t 0x2t 0x2t 0x7ft
        0x88t 0x2t 0x2t 0x7ft
        0x7at 0x2t 0x2t 0x7ft
        0x7et 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method private updateInkColorList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 95
    const v1, 0x7f0400ba

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->setContentView(I)V

    .line 97
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    .line 98
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0911a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 99
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0911a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 100
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 101
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 102
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 103
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 105
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 106
    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 108
    iget-boolean v1, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    if-eqz v1, :cond_1

    .line 109
    iget v1, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    iput v1, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    .line 112
    :goto_0
    const v1, 0x7f0b00bd

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    iget v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 119
    :goto_1
    const v1, 0x7f0b01dc

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectHelptext:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0b0148

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    .line 122
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0400bb

    sget-object v4, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 125
    iget-boolean v1, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 129
    :goto_2
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 132
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const v1, 0x7f0b01bf

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 134
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    .end local v0           #layout:Landroid/widget/LinearLayout;
    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    goto/16 :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    iget v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_ink_effect"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    .line 89
    invoke-direct {p0}, Lcom/android/settings/InkeffectPreview;->updateInkColorList()V

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/InkeffectPreview;->updateInkColorList()V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 166
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090173

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 168
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090660

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 149
    :goto_0
    const-string v1, "InkeffectPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    .line 154
    iput p3, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    .line 155
    return-void

    .line 147
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InkeffectPreview"

    const-string v2, "could not persist preview setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->finish()V

    goto :goto_0

    .line 181
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->finish()V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f0b05fa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
