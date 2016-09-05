.class Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SimpleDiskCache.java"


# instance fields
.field final synthetic a:Lcom/anupcowkur/reservoir/SimpleDiskCache;

.field private final b:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/anupcowkur/reservoir/SimpleDiskCache;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V
    .registers 5

    .prologue
    .line 146
    iput-object p1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->a:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    .line 147
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->c:Z

    .line 148
    iput-object p3, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lcom/anupcowkur/reservoir/SimpleDiskCache;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Lcom/anupcowkur/reservoir/SimpleDiskCache$1;)V
    .registers 5

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;-><init>(Lcom/anupcowkur/reservoir/SimpleDiskCache;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_16

    .line 160
    :goto_4
    iget-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->c:Z

    if-eqz v1, :cond_10

    .line 161
    iget-object v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b()V

    .line 166
    :goto_d
    if-eqz v0, :cond_18

    .line 167
    throw v0

    .line 163
    :cond_10
    iget-object v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a()V

    goto :goto_d

    .line 156
    :catch_16
    move-exception v0

    goto :goto_4

    .line 168
    :cond_18
    return-void
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 173
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 178
    return-void

    .line 174
    :catch_4
    move-exception v0

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->c:Z

    .line 176
    throw v0
.end method

.method public write(I)V
    .registers 4

    .prologue
    .line 183
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 188
    return-void

    .line 184
    :catch_4
    move-exception v0

    .line 185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->c:Z

    .line 186
    throw v0
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 193
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 198
    return-void

    .line 194
    :catch_4
    move-exception v0

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->c:Z

    .line 196
    throw v0
.end method

.method public write([BII)V
    .registers 6

    .prologue
    .line 203
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 208
    return-void

    .line 204
    :catch_4
    move-exception v0

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->c:Z

    .line 206
    throw v0
.end method
