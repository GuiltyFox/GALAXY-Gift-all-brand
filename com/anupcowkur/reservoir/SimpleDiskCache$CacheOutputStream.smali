.class Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SimpleDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupcowkur/reservoir/SimpleDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheOutputStream"
.end annotation


# instance fields
.field private final editor:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

.field private failed:Z

.field final synthetic this$0:Lcom/anupcowkur/reservoir/SimpleDiskCache;


# direct methods
.method private constructor <init>(Lcom/anupcowkur/reservoir/SimpleDiskCache;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V
    .registers 5
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "editor"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->this$0:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    .line 147
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 148
    iput-object p3, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->editor:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lcom/anupcowkur/reservoir/SimpleDiskCache;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Lcom/anupcowkur/reservoir/SimpleDiskCache$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/anupcowkur/reservoir/SimpleDiskCache;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .param p4, "x3"    # Lcom/anupcowkur/reservoir/SimpleDiskCache$1;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;-><init>(Lcom/anupcowkur/reservoir/SimpleDiskCache;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "closeException":Ljava/io/IOException;
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_10

    .line 160
    :goto_4
    iget-boolean v2, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->failed:Z

    if-eqz v2, :cond_13

    .line 161
    iget-object v2, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->editor:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .line 166
    :goto_d
    if-eqz v0, :cond_19

    .line 167
    throw v0

    .line 156
    :catch_10
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    goto :goto_4

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    :cond_13
    iget-object v2, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->editor:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V

    goto :goto_d

    .line 168
    :cond_19
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 176
    throw v0
.end method

.method public write(I)V
    .registers 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 186
    throw v0
.end method

.method public write([B)V
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 196
    throw v0
.end method

.method public write([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 206
    throw v0
.end method
