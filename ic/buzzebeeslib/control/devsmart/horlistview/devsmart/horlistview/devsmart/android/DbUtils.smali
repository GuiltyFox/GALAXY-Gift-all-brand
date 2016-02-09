.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/DbUtils;
.super Ljava/lang/Object;
.source "DbUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeAssetSQL(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 78
    :try_start_3
    invoke-static {p1, p2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils;->loadAssetString(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "createSQL":Ljava/lang/String;
    const-string v3, "\\?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_f
    if-lt v3, v5, :cond_18

    .line 86
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_2a
    .catchall {:try_start_3 .. :try_end_14} :catchall_3a

    .line 90
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    .end local v0    # "createSQL":Ljava/lang/String;
    :goto_17
    return-void

    .line 80
    .restart local v0    # "createSQL":Ljava/lang/String;
    :cond_18
    :try_start_18
    aget-object v2, v4, v3

    .line 81
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 83
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_3a

    .line 80
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 87
    .end local v0    # "createSQL":Ljava/lang/String;
    .end local v2    # "sql":Ljava/lang/String;
    :catch_2a
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/IOException;
    :try_start_2b
    const-class v3, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/DbUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error executing sql statement"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_3a

    .line 90
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_17

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3a
    move-exception v3

    .line 90
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    throw v3
.end method

.method public static getIntCursorValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultvalue"    # Ljava/lang/Integer;

    .prologue
    .line 38
    move-object v1, p2

    .line 39
    .local v1, "retval":Ljava/lang/Integer;
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "columnNum":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 41
    move-object v1, p2

    .line 45
    :goto_9
    return-object v1

    .line 43
    :cond_a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9
.end method

.method public static getLongCursorValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 27
    move-object v1, p2

    .line 28
    .local v1, "retval":Ljava/lang/Long;
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, "columnNum":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 30
    move-object v1, p2

    .line 34
    :goto_9
    return-object v1

    .line 32
    :cond_a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_9
.end method

.method public static getStringCursorValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, "retval":Ljava/lang/String;
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 18
    .local v0, "columnNum":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 19
    move-object v1, p2

    .line 23
    :goto_9
    return-object v1

    .line 21
    :cond_a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public static lookupSingleStringValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 49
    move-object v7, p3

    .line 50
    .local v7, "retval":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    aput-object p2, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 53
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_22

    move-result-object v7

    .line 56
    :cond_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    return-object v7

    .line 55
    :catchall_22
    move-exception v0

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 57
    throw v0
.end method

.method public static lookupSingleStringValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 63
    move-object v9, p5

    .line 64
    .local v9, "retval":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 66
    .local v8, "c":Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 67
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    move-result-object v9

    .line 70
    :cond_1d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    return-object v9

    .line 69
    :catchall_21
    move-exception v0

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 71
    throw v0
.end method

.method public static updateOrInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 95
    const-wide/16 v0, -0x1

    .line 96
    .local v0, "retval":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 98
    :try_start_5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 99
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    .line 100
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 102
    :cond_15
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 104
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 106
    return-wide v0

    .line 103
    :catchall_1c
    move-exception v2

    .line 104
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    throw v2
.end method
