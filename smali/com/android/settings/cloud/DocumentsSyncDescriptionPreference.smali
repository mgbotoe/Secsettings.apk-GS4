.class public Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;
.super Landroid/preference/Preference;
.source "DocumentsSyncDescriptionPreference.java"


# instance fields
.field private syncDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 24
    const v2, 0x7f0b03ff

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    .line 25
    iget-object v2, p0, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0912d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, vendorName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0912e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/cloud/CloudSettings;->getDocumentSyncFolderName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/cloud/DocumentsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .end local v0           #text:Ljava/lang/String;
    .end local v1           #vendorName:Ljava/lang/String;
    :cond_0
    return-void
.end method
