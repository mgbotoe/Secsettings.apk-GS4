.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mSearchStartMenu:Z

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LocalePicker;->mSearchStartMenu:Z

    .line 55
    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public exchangeLocaleOrder()V
    .locals 13

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 169
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    .line 175
    .local v2, finalSize:I
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 177
    .local v6, mContext:Landroid/content/Context;
    new-array v5, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 178
    .local v5, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    new-array v10, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 180
    .local v10, mTempLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 181
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aput-object v11, v10, v3

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    :cond_1
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 185
    const-string v11, "CHN"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHM"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHC"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHU"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CTC"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 190
    :cond_2
    const/4 v11, 0x4

    new-array v9, v11, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 191
    .local v9, mFindLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v11, 0x4

    new-array v8, v11, [I

    .line 192
    .local v8, mFindIndexs:[I
    const/4 v7, 0x0

    .line 195
    .local v7, mFindCounts:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    .line 196
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh_CN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 197
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 198
    aput v3, v8, v7

    .line 199
    add-int/lit8 v7, v7, 0x1

    .line 204
    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    .line 205
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_US"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 206
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 207
    aput v3, v8, v7

    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 213
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 214
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_GB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 215
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 216
    aput v3, v8, v7

    .line 217
    add-int/lit8 v7, v7, 0x1

    .line 222
    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_6

    .line 223
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko_KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 224
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 225
    aput v3, v8, v7

    .line 226
    add-int/lit8 v7, v7, 0x1

    .line 235
    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v5, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    move v4, v7

    .line 239
    .local v4, j:I
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_10

    .line 240
    const/4 v11, 0x4

    if-ne v7, v11, :cond_c

    .line 241
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x3

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    .line 239
    :cond_7
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 195
    .end local v4           #j:I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 204
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 213
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 222
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 243
    .restart local v4       #j:I
    :cond_c
    const/4 v11, 0x3

    if-ne v7, v11, :cond_e

    .line 244
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    .line 253
    :cond_d
    aget-object v11, v10, v3

    aput-object v11, v5, v4

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 246
    :cond_e
    const/4 v11, 0x2

    if-ne v7, v11, :cond_f

    .line 247
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    goto :goto_7

    .line 249
    :cond_f
    const/4 v11, 0x1

    if-ne v7, v11, :cond_d

    .line 250
    const/4 v11, 0x0

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    goto :goto_7

    .line 258
    .end local v4           #j:I
    .end local v7           #mFindCounts:I
    .end local v8           #mFindIndexs:[I
    .end local v9           #mFindLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_10
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v11, 0x10900a0

    const v12, 0x10201b2

    invoke-direct {v1, v6, v11, v12, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 261
    .local v1, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method protected isInDeveloperMode()Z
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, showDev:Z
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_0

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Ljava/util/Locale;

    const-string v2, "locale"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LocalePicker;->mSearchStartMenu:Z

    .line 82
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090b0e

    new-instance v2, Lcom/android/settings/LocalePicker$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/LocalePicker$1;-><init>(Lcom/android/settings/LocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/LocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 89
    .local v0, list:Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 90
    return-object v1
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->showDialog(I)V

    .line 124
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/LocalePicker;->mSearchStartMenu:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LocalePicker;->mSearchStartMenu:Z

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 121
    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    .line 96
    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->exchangeLocaleOrder()V

    .line 103
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 164
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 140
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 141
    return-void
.end method
