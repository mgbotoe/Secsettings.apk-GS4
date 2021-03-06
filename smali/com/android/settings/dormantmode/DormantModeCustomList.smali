.class public Lcom/android/settings/dormantmode/DormantModeCustomList;
.super Landroid/app/ListFragment;
.source "DormantModeCustomList.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static CUSTOM_LIST_STATE:Ljava/lang/String;

.field private static mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field builder:Landroid/net/Uri$Builder;

.field private mCustomListAdd:Landroid/view/View;

.field private mSelectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-string v0, ""

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->CUSTOM_LIST_STATE:Ljava/lang/String;

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mSelectedPosition:I

    .line 64
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dormant"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "custom_list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->builder:Landroid/net/Uri$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dormantmode/DormantModeCustomList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/dormantmode/DormantModeCustomList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mSelectedPosition:I

    return p1
.end method


# virtual methods
.method public makeDisablePopup(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v1, "app_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantModeCustomList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    .line 97
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 99
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mCustomListAdd:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mCustomListAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :goto_0
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040171

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v7, 0x1020014

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    .line 114
    const-string v0, "custom_list_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->setCustomListState(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomList;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/dormantmode/DormantModeCustomList$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$1;-><init>(Lcom/android/settings/dormantmode/DormantModeCustomList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 130
    invoke-virtual {p0, v8}, Lcom/android/settings/dormantmode/DormantModeCustomList;->setHasOptionsMenu(Z)V

    .line 131
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mCustomListAdd:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mCustomListAdd:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 139
    const-string v7, "custom_list_view"

    invoke-virtual {p0, v7}, Lcom/android/settings/dormantmode/DormantModeCustomList;->setCustomListState(Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 144
    const-string v7, "result"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 146
    .local v5, mParticipantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 147
    .local v3, i:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v6, selection:Ljava/lang/StringBuffer;
    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 151
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, args:[Ljava/lang/String;
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 159
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 161
    .end local v0           #args:[Ljava/lang/String;
    :cond_1
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v4, mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "dormant"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "custom_list"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 168
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "sec_custom_dormant_contact"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 170
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 188
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5           #mParticipantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #selection:Ljava/lang/StringBuffer;
    :cond_2
    return-void

    .line 175
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v3       #i:I
    .restart local v4       #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v5       #mParticipantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #selection:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 178
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 180
    .local v2, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0161

    if-ne v1, v2, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "settings-phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v1, "existingRecipientCount"

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantModeCustomList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 287
    .end local v0           #phonebookIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string v1, "com.android.contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeCustomList;->makeDisablePopup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 255
    .local v2, baseUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeCustomList;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v6, "display_name COLLATE LOCALIZED ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 194
    const/4 v0, 0x1

    const v1, 0x7f090b09

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 197
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x2

    const v1, 0x7f091299

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02019f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 80
    const v0, 0x7f04007d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 262
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 265
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeCustomList;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 270
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 244
    :goto_0
    return v3

    .line 220
    :pswitch_0
    const/4 v3, -0x1

    invoke-static {v3}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->newInstance(I)Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    move-result-object v0

    .line 221
    .local v0, dmf:Lcom/android/settings/dormantmode/DormantModeCustomListDel;
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 222
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 223
    const/16 v3, 0x1001

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 224
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 225
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    move v3, v4

    .line 228
    goto :goto_0

    .line 230
    .end local v0           #dmf:Lcom/android/settings/dormantmode/DormantModeCustomListDel;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.contacts"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    new-instance v2, Landroid/content/Intent;

    const-string v5, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, phonebookIntent:Landroid/content/Intent;
    const-string v5, "additional"

    const-string v6, "settings-phone-multi"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v5, "maxRecipientCount"

    const/16 v6, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/dormantmode/DormantModeCustomList;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v2           #phonebookIntent:Landroid/content/Intent;
    :goto_1
    move v3, v4

    .line 241
    goto :goto_0

    .line 237
    :cond_0
    const-string v3, "com.android.contacts"

    invoke-virtual {p0, v3}, Lcom/android/settings/dormantmode/DormantModeCustomList;->makeDisablePopup(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 209
    .local v0, state:I
    if-eqz v0, :cond_0

    .line 210
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    .line 88
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomList;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->reloadcustomlist()V

    .line 90
    return-void
.end method

.method public reloadcustomlist()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 135
    return-void
.end method

.method protected setCustomListState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 290
    sput-object p1, Lcom/android/settings/dormantmode/DormantModeCustomList;->CUSTOM_LIST_STATE:Ljava/lang/String;

    .line 291
    return-void
.end method
