.class public Lcom/android/settings/UltrasoundLength;
.super Lcom/android/internal/app/AlertActivity;
.source "UltrasoundLength.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UltrasoundLength$UltrasoundAdapter;
    }
.end annotation


# static fields
.field public static mUltrasoundLength:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mUltrasoundAdapter:Lcom/android/settings/UltrasoundLength$UltrasoundAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/UltrasoundLength;->mUltrasoundLength:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/UltrasoundLength;->mUltrasoundAdapter:Lcom/android/settings/UltrasoundLength$UltrasoundAdapter;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/UltrasoundLength;->mCurrentSelection:I

    .line 177
    return-void
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultrasonic_db"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultrasonic_db"

    iget-object v2, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->finish()V

    .line 174
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget-object v0, Lcom/android/settings/UltrasoundLength;->mUltrasoundLength:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    sget-object v0, Lcom/android/settings/UltrasoundLength;->mUltrasoundLength:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c83

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/settings/UltrasoundLength;->mUltrasoundLength:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c84

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/android/settings/UltrasoundLength;->mUltrasoundLength:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c85

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/android/settings/UltrasoundLength;->mUltrasoundAdapter:Lcom/android/settings/UltrasoundLength$UltrasoundAdapter;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings/UltrasoundLength$UltrasoundAdapter;

    sget-object v5, Lcom/android/settings/UltrasoundLength;->mUltrasoundLength:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/UltrasoundLength$UltrasoundAdapter;-><init>(Lcom/android/settings/UltrasoundLength;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/UltrasoundLength;->mUltrasoundAdapter:Lcom/android/settings/UltrasoundLength$UltrasoundAdapter;

    .line 91
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/UltrasoundLength;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/UltrasoundLength;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    iget-object v6, p0, Lcom/android/settings/UltrasoundLength;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 95
    .local v6, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c81

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Lcom/android/settings/UltrasoundLength;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04018e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 97
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    const v0, 0x7f090173

    invoke-virtual {p0, v0}, Lcom/android/settings/UltrasoundLength;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 100
    iget-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    .line 101
    iget-object v0, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/UltrasoundLength;->mUltrasoundAdapter:Lcom/android/settings/UltrasoundLength$UltrasoundAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->setupAlert()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getCurrentSelection()I

    move-result v0

    iput v0, p0, Lcom/android/settings/UltrasoundLength;->mCurrentSelection:I

    .line 109
    iget v0, p0, Lcom/android/settings/UltrasoundLength;->mCurrentSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 110
    const-string v0, "ModePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() positoin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/UltrasoundLength;->mCurrentSelection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/UltrasoundLength;->mCurrentSelection:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/UltrasoundLength;->mCurrentSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v0, "ModePreview"

    const-string v1, "onCreate() positoin : -1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultrasonic_db"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, currentValue:I
    iget-object v1, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 165
    .end local v0           #currentValue:I
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 166
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultrasonic_db"

    iget-object v2, p0, Lcom/android/settings/UltrasoundLength;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/UltrasoundLength;->finish()V

    .line 150
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 131
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    return-void
.end method
