.class Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpAddressTextWatcher"
.end annotation


# instance fields
.field final editText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter "edit"

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1733
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    .line 1734
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher$1;-><init>(Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1743
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1747
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1751
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1752
    .local v3, text:Ljava/lang/String;
    const-string v1, ""

    .line 1754
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1755
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1756
    .local v2, temp:C
    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    if-le v2, v4, :cond_1

    :cond_0
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_2

    .line 1757
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1754
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1760
    .end local v2           #temp:C
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1761
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1762
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 1764
    :cond_4
    return-void
.end method
