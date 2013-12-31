.class public Lcom/android/settings/search/SearchConnectProvider;
.super Landroid/content/ContentProvider;
.source "SearchConnectProvider.java"


# static fields
.field public static final CALL_SEARCH_URI:Landroid/net/Uri;

.field static final RESULTE:[Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    const-string v0, "content://com.android.phone.settingsearch.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SearchConnectProvider;->CALL_SEARCH_URI:Landroid/net/Uri;

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/search/SearchConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 39
    sget-object v0, Lcom/android/settings/search/SearchConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.searchconnect.provider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "disable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/search/SearchConnectProvider;->RESULTE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private DataPaser(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 27
    .parameter "data"

    .prologue
    .line 94
    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const/16 v25, 0x0

    .line 178
    :cond_0
    :goto_0
    return-object v25

    .line 98
    :cond_1
    const-string v2, "\\},"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, dataArray:[Ljava/lang/String;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v20, mSt_listup:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v17, mCall_listup:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v2, v11

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 104
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v11, v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 106
    :cond_2
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    array-length v2, v11

    if-ge v13, v2, :cond_5

    .line 107
    aget-object v2, v11, v13

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 108
    .local v26, rowdata:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 110
    .local v23, menuInfo:[Ljava/lang/String;
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v21, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2
    move-object/from16 v0, v23

    array-length v2, v0

    if-ge v15, v2, :cond_3

    .line 113
    aget-object v2, v23, v15

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 114
    .local v16, key_value:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 117
    .end local v16           #key_value:[Ljava/lang/String;
    :cond_3
    const-string v2, "package_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.android.phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    const-string v2, "rowid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "id_key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 121
    :cond_4
    const-string v2, "rowid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "id_key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 127
    .end local v15           #j:I
    .end local v21           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23           #menuInfo:[Ljava/lang/String;
    .end local v26           #rowdata:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 128
    .local v8, c:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v22, mdelteMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Lcom/android/settings/search/SearchFilterMenu;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SearchConnectProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/android/settings/search/SearchFilterMenu;-><init>(Landroid/content/Context;)V

    .line 130
    .local v18, mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/search/SearchFilterMenu;->initDynamicPreferenceRemovekey()V

    .line 132
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 133
    .local v24, mid_key:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SearchFilterMenu;->getDynamiRemoveResult(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 134
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 137
    .end local v24           #mid_key:Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_8

    .line 138
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 142
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 144
    new-instance v25, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/settings/search/SearchConnectProvider;->RESULTE:[Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 145
    .local v25, result:Landroid/database/MatrixCursor;
    new-instance v10, Lcom/android/settings/search/SearchDirectSettingUpdate;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SearchConnectProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;-><init>(Landroid/content/Context;)V

    .line 146
    .local v10, curentStatus:Lcom/android/settings/search/SearchDirectSettingUpdate;
    const/16 v19, 0x0

    .line 148
    .local v19, mMenuAvaible:I
    :try_start_0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 149
    .restart local v24       #mid_key:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->getDependecyState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v19, 0x0

    .line 150
    :goto_7
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/android/settings/search/SearchDirectSettingUpdate;->getCurrentState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "1"

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual/range {v25 .. v25}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 154
    .end local v24           #mid_key:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 155
    .local v12, e:Ljava/util/ConcurrentModificationException;
    const-string v2, "SearchConnectProvider"

    const-string v3, "ConcurrentModificationException : method \'next()\' while iterating over \'mSt_listup\'"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v12           #e:Ljava/util/ConcurrentModificationException;
    :cond_9
    const/4 v9, 0x0

    .line 161
    .local v9, cCall:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_b

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/SearchConnectProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/search/SearchConnectProvider;->CALL_SEARCH_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 165
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 167
    :cond_a
    invoke-virtual/range {v25 .. v25}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 168
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_a

    .line 175
    :cond_b
    if-eqz v9, :cond_0

    .line 176
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 149
    .end local v9           #cCall:Landroid/database/Cursor;
    .restart local v24       #mid_key:Ljava/lang/String;
    :cond_c
    const/16 v19, 0x100

    goto/16 :goto_7

    .line 150
    :cond_d
    :try_start_2
    const-string v2, "0"
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 171
    .end local v24           #mid_key:Ljava/lang/String;
    .restart local v9       #cCall:Landroid/database/Cursor;
    :catch_1
    move-exception v12

    .line 172
    .local v12, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SearchConnectProvider"

    const-string v3, "DataPaser : Call Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    if-eqz v9, :cond_0

    .line 176
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 175
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_e

    .line 176
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, result:Landroid/database/Cursor;
    sget-object v1, Lcom/android/settings/search/SearchConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    if-eqz p3, :cond_0

    .line 78
    invoke-direct {p0, p3}, Lcom/android/settings/search/SearchConnectProvider;->DataPaser(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
