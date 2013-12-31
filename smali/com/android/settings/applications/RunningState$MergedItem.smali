.class Lcom/android/settings/applications/RunningState$MergedItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field mUser:Lcom/android/settings/applications/RunningState$UserState;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "userId"

    .prologue
    const/4 v1, -0x1

    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .line 573
    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 577
    return-void
.end method

.method private setDescription(Landroid/content/Context;II)V
    .locals 6
    .parameter "context"
    .parameter "numProcesses"
    .parameter "numServices"

    .prologue
    const/4 v5, 0x1

    .line 580
    iget v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    if-eq v1, p3, :cond_2

    .line 581
    :cond_0
    iput p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    .line 582
    iput p3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 583
    const v0, 0x7f090789

    .line 584
    .local v0, resid:I
    if-eq p2, v5, :cond_4

    .line 585
    if-eq p3, v5, :cond_3

    const v0, 0x7f09078c

    .line 591
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    .line 594
    .end local v0           #resid:I
    :cond_2
    return-void

    .line 585
    .restart local v0       #resid:I
    :cond_3
    const v0, 0x7f09078b

    goto :goto_0

    .line 588
    :cond_4
    if-eq p3, v5, :cond_1

    .line 589
    const v0, 0x7f09078a

    goto :goto_0
.end method


# virtual methods
.method public loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-nez v0, :cond_0

    .line 674
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method update(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "context"
    .parameter "background"

    .prologue
    .line 597
    iput-boolean p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    .line 599
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v6, :cond_4

    .line 605
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 606
    .local v1, child0:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v6, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 607
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    :goto_0
    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 608
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 609
    const/4 v3, 0x0

    .line 610
    .local v3, numProcesses:I
    const/4 v4, 0x0

    .line 611
    .local v4, numServices:I
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 612
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 613
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 614
    .local v0, child:Lcom/android/settings/applications/RunningState$MergedItem;
    iget v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    add-int/2addr v3, v6

    .line 615
    iget v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    add-int/2addr v4, v6

    .line 616
    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 617
    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 612
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 607
    .end local v0           #child:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v2           #i:I
    .end local v3           #numProcesses:I
    .end local v4           #numServices:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 620
    .restart local v2       #i:I
    .restart local v3       #numProcesses:I
    .restart local v4       #numServices:I
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-nez v6, :cond_3

    .line 621
    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    .line 642
    .end local v1           #child0:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v3           #numProcesses:I
    .end local v4           #numServices:I
    :cond_3
    const/4 v6, 0x0

    return v6

    .line 624
    .end local v2           #i:I
    :cond_4
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 625
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 626
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 628
    iget-boolean v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-nez v6, :cond_5

    .line 629
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    .line 633
    :cond_5
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 634
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 635
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 636
    .local v5, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    iget-wide v6, v5, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    iget-wide v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iget-wide v8, v5, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 637
    iget-wide v6, v5, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 634
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 629
    .end local v2           #i:I
    .end local v5           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 646
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v3, :cond_0

    .line 647
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 648
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 649
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 650
    .local v0, child:Lcom/android/settings/applications/RunningState$MergedItem;
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 651
    iget-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iget-wide v5, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v0           #child:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 655
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 656
    iget-wide v4, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v6, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long v3, v4, v6

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 660
    :cond_1
    iget-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, sizeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 663
    iput-object v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    .line 669
    :cond_2
    return v8
.end method
