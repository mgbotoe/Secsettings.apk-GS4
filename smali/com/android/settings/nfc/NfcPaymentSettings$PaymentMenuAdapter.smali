.class Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaymentMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private menuDescription:[Ljava/lang/String;

.field private menuTitle:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 268
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuTitle:[Ljava/lang/String;

    .line 269
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuDescription:[Ljava/lang/String;

    .line 272
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 273
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuTitle:[Ljava/lang/String;

    const v1, 0x7f0902c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 274
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuTitle:[Ljava/lang/String;

    const v1, 0x7f0902c3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 275
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuDescription:[Ljava/lang/String;

    const v1, 0x7f0902c2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 276
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuDescription:[Ljava/lang/String;

    const v1, 0x7f0902c4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 277
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuTitle:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 288
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 293
    if-nez p2, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400eb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 295
    new-instance v0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;-><init>()V

    .line 296
    .local v0, holder:Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;
    const v1, 0x7f0b026a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;->textTitle:Landroid/widget/TextView;

    .line 298
    const v1, 0x7f0b0269

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;->textCheckbox:Landroid/widget/CheckedTextView;

    .line 300
    const v1, 0x7f0b026b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;->textDescription:Landroid/widget/TextView;

    .line 303
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    :goto_0
    iget-object v1, v0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;->textTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuTitle:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v1, v0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;->textDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter;->menuDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    return-object p2

    .line 305
    .end local v0           #holder:Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/settings/nfc/NfcPaymentSettings$PaymentMenuAdapter$ViewHolder;
    goto :goto_0
.end method
