.class Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
.super Landroid/preference/SwitchPreference;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppRestrictionsPreference"
.end annotation


# instance fields
.field private appInfo:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

.field childPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final grayscaleFilter:Landroid/graphics/ColorFilter;

.field private hasSettings:Z

.field private immutable:Z

.field private listener:Landroid/view/View$OnClickListener;

.field panelOpen:Z

.field private restrictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->childPreferences:Ljava/util/List;

    .line 202
    const v2, 0x7f040111

    invoke-virtual {p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setLayoutResource(I)V

    .line 203
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    .line 205
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 206
    .local v0, colorMatrix:Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 207
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 208
    .local v1, matrix:[F
    const/16 v2, 0x12

    const/high16 v3, 0x3f00

    aput v3, v1, v2

    .line 209
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 210
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setSettingsEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    .line 214
    return-void
.end method


# virtual methods
.method getRestrictions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method isImmutable()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 259
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 261
    const v7, 0x7f0b02fc

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 262
    .local v1, appRestrictionsSettings:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 263
    const v7, 0x7f0b02fd

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 268
    const v7, 0x7f0b02fb

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, appRestrictionsPref:Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 273
    const v7, 0x1020018

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 274
    .local v6, widget:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v10

    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 275
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 276
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 277
    .local v4, ll:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 278
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 279
    .local v2, childChilView:Landroid/view/View;
    instance-of v7, v2, Landroid/widget/Switch;

    if-eqz v7, :cond_0

    .line 280
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    .line 281
    .local v5, switchView:Landroid/widget/Switch;
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v10

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 282
    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 283
    new-instance v7, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;

    invoke-direct {v7, p0, v5}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V

    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    .end local v5           #switchView:Landroid/widget/Switch;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #appRestrictionsPref:Landroid/view/View;
    .end local v2           #childChilView:Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #ll:Landroid/widget/LinearLayout;
    .end local v6           #widget:Landroid/view/ViewGroup;
    :cond_1
    move v7, v9

    .line 262
    goto :goto_0

    .restart local v0       #appRestrictionsPref:Landroid/view/View;
    .restart local v6       #widget:Landroid/view/ViewGroup;
    :cond_2
    move v7, v8

    .line 274
    goto :goto_1

    .restart local v2       #childChilView:Landroid/view/View;
    .restart local v3       #i:I
    .restart local v4       #ll:Landroid/widget/LinearLayout;
    .restart local v5       #switchView:Landroid/widget/Switch;
    :cond_3
    move v7, v8

    .line 281
    goto :goto_3

    .line 293
    .end local v2           #childChilView:Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #ll:Landroid/widget/LinearLayout;
    .end local v5           #switchView:Landroid/widget/Switch;
    :cond_4
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 224
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 225
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method setImmutable(Z)V
    .locals 0
    .parameter "immutable"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    .line 233
    return-void
.end method

.method setRestrictions(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    .line 229
    return-void
.end method

.method setSelectableAppInfo(Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;)V
    .locals 0
    .parameter "appInfo"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->appInfo:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 241
    return-void
.end method
