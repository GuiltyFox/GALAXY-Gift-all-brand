.class Lcn/aigestudio/downloader/bizs/DLManager$DLTask;
.super Ljava/lang/Object;
.source "DLManager.java"

# interfaces
.implements Lcn/aigestudio/downloader/interfaces/IDLThreadListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/aigestudio/downloader/bizs/DLManager;

.field private b:Lcn/aigestudio/downloader/entities/TaskInfo;

.field private c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/aigestudio/downloader/entities/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager;Lcn/aigestudio/downloader/entities/TaskInfo;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 164
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->j:Z

    .line 165
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    .line 166
    iput-object p3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    .line 167
    iget v0, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->d:I

    iput v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->d:I

    .line 168
    iget v0, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->e:I

    iput v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    .line 170
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 171
    iget-object v0, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 172
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->a(Ljava/lang/String;)V

    .line 174
    :cond_31
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->k:Ljava/util/List;

    .line 175
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->k:Ljava/util/List;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 176
    iput-boolean v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->g:Z

    .line 181
    :cond_4b
    :goto_4b
    return-void

    .line 178
    :cond_4c
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->a(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method synthetic constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager;Lcn/aigestudio/downloader/entities/TaskInfo;Lcn/aigestudio/downloader/interfaces/DLTaskListener;Lcn/aigestudio/downloader/bizs/DLManager$1;)V
    .registers 5

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;-><init>(Lcn/aigestudio/downloader/bizs/DLManager;Lcn/aigestudio/downloader/entities/TaskInfo;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V

    return-void
.end method

.method static synthetic a(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->g:Z

    return v0
.end method

.method static synthetic b(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->h:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 6

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_1
    iget v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->d:I

    .line 271
    iget v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->d:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 272
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v1, :cond_23

    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->f:I

    if-eq v0, v1, :cond_23

    .line 273
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    invoke-virtual {v1, v0}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(I)V

    .line 274
    iput v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->f:I

    .line 276
    :cond_23
    iget v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->d:I

    if-ne v0, v1, :cond_4c

    .line 277
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->a(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->a()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(Ljava/io/File;)V

    .line 281
    :cond_4c
    iget-boolean v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->h:Z

    if-eqz v0, :cond_6a

    .line 282
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->d:I

    iput v1, v0, Lcn/aigestudio/downloader/entities/TaskInfo;->d:I

    .line 283
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->b(Lcn/aigestudio/downloader/entities/TaskInfo;)V

    .line 284
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->a()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_6a
    monitor-exit p0

    .line 287
    return-void

    .line 286
    :catchall_6c
    move-exception v0

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 184
    iput-boolean p1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->h:Z

    .line 185
    return-void
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v4, 0x5

    const/high16 v2, 0x200000

    const/4 v0, 0x0

    .line 189
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/DLManager;->b(Lcn/aigestudio/downloader/bizs/DLManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/aigestudio/downloader/utils/NetUtil;->a(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_52

    .line 190
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v1, :cond_1c

    .line 191
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    const-string/jumbo v3, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v1, v0, v3}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(ILjava/lang/String;)Z

    .line 192
    :cond_1c
    iput-boolean v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->j:Z

    .line 197
    :cond_1e
    :goto_1e
    iget-boolean v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->j:Z

    if-eqz v1, :cond_16b

    .line 198
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->a()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-boolean v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->g:Z

    if-eqz v1, :cond_6e

    .line 200
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/entities/ThreadInfo;

    .line 201
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-static {v2}, Lcn/aigestudio/downloader/bizs/DLManager;->a(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;

    invoke-direct {v3, p0, v0, p0}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;-><init>(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;Lcn/aigestudio/downloader/entities/ThreadInfo;Lcn/aigestudio/downloader/interfaces/IDLThreadListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_37

    .line 193
    :cond_52
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/DLManager;->b(Lcn/aigestudio/downloader/bizs/DLManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/aigestudio/downloader/utils/NetUtil;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_1e

    .line 194
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v1, :cond_1e

    .line 195
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    const-string/jumbo v3, "\u6b63\u5728\u4f7f\u7528\u975eWIFI\u7f51\u7edc\u4e0b\u8f7d"

    invoke-virtual {v1, v4, v3}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(ILjava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->j:Z

    goto :goto_1e

    .line 204
    :cond_6e
    const/4 v1, 0x0

    .line 206
    :try_start_6f
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/TaskInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Lcn/aigestudio/downloader/utils/NetUtil;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_1e1
    .catchall {:try_start_6f .. :try_end_76} :catchall_1d4

    move-result-object v7

    .line 207
    :try_start_77
    const-string/jumbo v1, "Range"

    const-string/jumbo v3, "bytes=0-2147483647"

    invoke-virtual {v7, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xce

    if-ne v1, v3, :cond_127

    .line 209
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    iput v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    .line 210
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    int-to-long v8, v1

    cmp-long v1, v4, v8

    if-nez v1, :cond_c2

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->i:Z

    .line 212
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->a()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v1, v3}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(Ljava/io/File;)V

    .line 215
    :cond_c2
    iget-boolean v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->i:Z

    if-nez v1, :cond_166

    .line 216
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    iput v3, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->e:I

    .line 217
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v1

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    invoke-virtual {v1, v3}, Lcn/aigestudio/downloader/bizs/DBManager;->a(Lcn/aigestudio/downloader/entities/TaskInfo;)V

    .line 220
    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    if-gt v1, v2, :cond_11f

    .line 221
    const/4 v2, 0x3

    .line 222
    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    div-int/2addr v1, v2

    move v9, v1

    move v10, v2

    .line 226
    :goto_df
    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    rem-int v11, v1, v9

    move v8, v0

    .line 227
    :goto_e4
    if-ge v8, v10, :cond_166

    .line 228
    mul-int v4, v8, v9

    .line 229
    add-int v0, v4, v9

    add-int/lit8 v5, v0, -0x1

    .line 230
    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_f4

    .line 231
    add-int v0, v4, v9

    add-int v5, v0, v11

    .line 233
    :cond_f4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 234
    new-instance v0, Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/TaskInfo;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcn/aigestudio/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/DLManager;->a(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;

    invoke-direct {v2, p0, v0, p0}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;-><init>(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;Lcn/aigestudio/downloader/entities/ThreadInfo;Lcn/aigestudio/downloader/interfaces/IDLThreadListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 227
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_e4

    .line 224
    :cond_11f
    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    const/high16 v3, 0x200000

    div-int/2addr v1, v3

    move v9, v2

    move v10, v1

    goto :goto_df

    .line 240
    :cond_127
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_166

    .line 241
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    .line 242
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v0, v0, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v0, v0, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_16c

    .line 243
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->a()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v0, :cond_166

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(Ljava/io/File;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_166} :catch_197
    .catchall {:try_start_77 .. :try_end_166} :catchall_1dc

    .line 259
    :cond_166
    :goto_166
    if-eqz v7, :cond_16b

    .line 260
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 265
    :cond_16b
    :goto_16b
    return-void

    .line 246
    :cond_16c
    :try_start_16c
    new-instance v0, Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/TaskInfo;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->e:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcn/aigestudio/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/DLManager;->a(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;

    invoke-direct {v2, p0, v0, p0}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;-><init>(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;Lcn/aigestudio/downloader/entities/ThreadInfo;Lcn/aigestudio/downloader/interfaces/IDLThreadListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_196} :catch_197
    .catchall {:try_start_16c .. :try_end_196} :catchall_1dc

    goto :goto_166

    .line 251
    :catch_197
    move-exception v0

    move-object v1, v7

    .line 252
    :goto_199
    :try_start_199
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v2

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/aigestudio/downloader/bizs/DBManager;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/TaskInfo;

    move-result-object v2

    if-eqz v2, :cond_1c1

    .line 253
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->d:I

    iput v3, v2, Lcn/aigestudio/downloader/entities/TaskInfo;->d:I

    .line 254
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v2

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    invoke-virtual {v2, v3}, Lcn/aigestudio/downloader/bizs/DBManager;->b(Lcn/aigestudio/downloader/entities/TaskInfo;)V

    .line 255
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->a()Ljava/util/Hashtable;

    move-result-object v2

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_1c1
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v2, :cond_1ce

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->c:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(Ljava/lang/String;)V
    :try_end_1ce
    .catchall {:try_start_199 .. :try_end_1ce} :catchall_1de

    .line 259
    :cond_1ce
    if-eqz v1, :cond_16b

    .line 260
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_16b

    .line 259
    :catchall_1d4
    move-exception v0

    move-object v7, v1

    :goto_1d6
    if-eqz v7, :cond_1db

    .line 260
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1db
    throw v0

    .line 259
    :catchall_1dc
    move-exception v0

    goto :goto_1d6

    :catchall_1de
    move-exception v0

    move-object v7, v1

    goto :goto_1d6

    .line 251
    :catch_1e1
    move-exception v0

    goto :goto_199
.end method
