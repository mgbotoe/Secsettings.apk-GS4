.class public Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndHoldDelayFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private currentLongPressTimeout:I

.field private mTapAndHoldDelayList:Landroid/widget/ListView;

.field private mTimeOutOptionsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 27
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->currentLongPressTimeout:I

    return-void
.end method

.method private getCurrentSelectedValue()I
    .locals 4

    .prologue
    const/16 v1, 0x3e8

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_press_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, ex:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_press_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setCurrentSelectedVAlue()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getCurrentSelectedValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->currentLongPressTimeout:I

    .line 73
    iget v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->currentLongPressTimeout:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    iget v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->currentLongPressTimeout:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 79
    :cond_1
    iget v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->currentLongPressTimeout:I

    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 33
    const v3, 0x7f04017d

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->view:Landroid/view/View;

    .line 35
    iget-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->view:Landroid/view/View;

    const v4, 0x7f0b0406

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, mTimeOutOptions:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTimeOutOptionsArrayList:Ljava/util/ArrayList;

    .line 42
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTimeOutOptionsArrayList:Ljava/util/ArrayList;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x109000f

    iget-object v5, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTimeOutOptionsArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 51
    iget-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->setCurrentSelectedVAlue()V

    .line 54
    iget-object v3, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->view:Landroid/view/View;

    return-object v3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/4 v3, 0x0

    .line 103
    if-nez p3, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 113
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 118
    :cond_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0915b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0915b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->mTapAndHoldDelayList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayFragment;->setCurrentSelectedVAlue()V

    .line 68
    :cond_1
    return-void
.end method
