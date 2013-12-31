.class public Lcom/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# instance fields
.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 46
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "FontDir"
    .parameter "folderName"

    .prologue
    .line 123
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v3, newDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, tmp:[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 127
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 129
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v1           #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 136
    .end local v2           #i:I
    .local v0, bRet:Z
    :goto_1
    return v0

    .line 135
    .end local v0           #bRet:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #bRet:Z
    goto :goto_1
.end method


# virtual methods
.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 13
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    .line 146
    move-object v8, p2

    .line 147
    .local v8, myInputStream:Ljava/io/InputStream;
    move-object v7, p1

    .line 148
    .local v7, myDirectory:Ljava/io/File;
    move-object/from16 v6, p3

    .line 151
    .local v6, myDestination:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 153
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 155
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v11, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 156
    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v11, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 158
    .local v9, os:Ljava/io/BufferedOutputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 160
    .local v0, b:[B
    const/4 v10, 0x0

    .line 161
    .local v10, read:I
    :goto_0
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_4

    .line 162
    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0           #b:[B
    .end local v1           #dest:Ljava/io/File;
    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .end local v10           #read:I
    :catch_0
    move-exception v2

    .line 170
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 172
    .local v4, length:J
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-nez v11, :cond_0

    .line 173
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 175
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    if-eqz v8, :cond_1

    .line 180
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 181
    :cond_1
    iget-object v11, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v11, :cond_2

    .line 182
    iget-object v11, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 190
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #length:J
    :cond_2
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 192
    .restart local v4       #length:J
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-nez v11, :cond_3

    .line 193
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 195
    :cond_3
    return-void

    .line 164
    .end local v3           #file:Ljava/io/File;
    .end local v4           #length:J
    .restart local v0       #b:[B
    .restart local v1       #dest:Ljava/io/File;
    .restart local v9       #os:Ljava/io/BufferedOutputStream;
    .restart local v10       #read:I
    :cond_4
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 165
    iget-object v11, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 166
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 179
    if-eqz v8, :cond_5

    .line 180
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 181
    :cond_5
    iget-object v11, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v11, :cond_2

    .line 182
    iget-object v11, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 185
    :catch_1
    move-exception v11

    goto :goto_1

    .line 178
    .end local v0           #b:[B
    .end local v1           #dest:Ljava/io/File;
    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .end local v10           #read:I
    :catchall_0
    move-exception v11

    .line 179
    if-eqz v8, :cond_6

    .line 180
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 181
    :cond_6
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_7

    .line 182
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 186
    :cond_7
    :goto_2
    throw v11

    .line 185
    :catch_2
    move-exception v12

    goto :goto_2

    .restart local v2       #ex:Ljava/lang/Exception;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #length:J
    :catch_3
    move-exception v11

    goto :goto_1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "fontName"

    .prologue
    const/4 v5, 0x1

    .line 99
    const-string v4, "fonts"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 100
    .local v2, newFontDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v0, fontFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, tmp:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 107
    aget-object v4, v3, v1

    invoke-direct {p0, v2, v4}, Lcom/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1           #i:I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 113
    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 115
    return-object v0
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "filename"
    .parameter "directory"

    .prologue
    .line 61
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/app_fonts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, sFile:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 65
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 66
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 68
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 69
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 71
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 90
    .end local v0           #dest:Ljava/io/File;
    .end local v2           #sFile:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v3, "persist.sys.flipfontpath"

    const-string v4, "empty"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v3

    goto :goto_0

    .line 77
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 78
    :try_start_4
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_3

    .line 79
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 80
    :cond_3
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_4

    .line 81
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 84
    :cond_4
    :goto_1
    throw v3

    .line 83
    :catch_2
    move-exception v4

    goto :goto_1

    .restart local v0       #dest:Ljava/io/File;
    .restart local v2       #sFile:Ljava/lang/String;
    :catch_3
    move-exception v3

    goto :goto_0
.end method
