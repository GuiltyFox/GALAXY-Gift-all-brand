.class public Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;
.super Ljava/lang/Object;
.source "ImageThreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;,
        Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;,
        Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageThreadLoader"


# instance fields
.field private final Cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private runner:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->Queue:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;-><init>(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$1;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->runner:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    .line 45
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->runner:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->Queue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static readBitmapFromNetwork(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 151
    const/4 v5, 0x0

    .line 152
    .local v5, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 153
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 155
    .local v2, "bmp":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 156
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 157
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 158
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_13} :catch_2f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_4f
    .catchall {:try_start_3 .. :try_end_13} :catchall_6f

    .line 159
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_13
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_16} :catch_8c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_89
    .catchall {:try_start_13 .. :try_end_16} :catchall_86

    move-result-object v2

    .line 166
    if-eqz v5, :cond_1c

    .line 167
    :try_start_19
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_1c
    if-eqz v1, :cond_21

    .line 169
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_23

    :cond_21
    move-object v0, v1

    .line 174
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_22
    :goto_22
    return-object v2

    .line 170
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "conn":Ljava/net/URLConnection;
    :catch_23
    move-exception v4

    .line 171
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageThreadLoader"

    const-string/jumbo v7, "Error closing stream."

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 173
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_22

    .line 160
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v4

    .line 161
    .local v4, "e":Ljava/net/MalformedURLException;
    :goto_30
    :try_start_30
    const-string/jumbo v6, "ImageThreadLoader"

    const-string/jumbo v7, "Bad ad URL"

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_6f

    .line 166
    if-eqz v5, :cond_3e

    .line 167
    :try_start_3b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_3e
    if-eqz v0, :cond_22

    .line 169
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_22

    .line 170
    :catch_44
    move-exception v4

    .line 171
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageThreadLoader"

    const-string/jumbo v7, "Error closing stream."

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 162
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4f
    move-exception v4

    .line 163
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_50
    :try_start_50
    const-string/jumbo v6, "ImageThreadLoader"

    const-string/jumbo v7, "Could not get remote ad image"

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_6f

    .line 166
    if-eqz v5, :cond_5e

    .line 167
    :try_start_5b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_5e
    if-eqz v0, :cond_22

    .line 169
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_63} :catch_64

    goto :goto_22

    .line 170
    :catch_64
    move-exception v4

    .line 171
    const-string/jumbo v6, "ImageThreadLoader"

    const-string/jumbo v7, "Error closing stream."

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 165
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_6f
    move-exception v6

    .line 166
    :goto_70
    if-eqz v5, :cond_75

    .line 167
    :try_start_72
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_75
    if-eqz v0, :cond_7a

    .line 169
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7a} :catch_7b

    .line 172
    :cond_7a
    :goto_7a
    throw v6

    .line 170
    :catch_7b
    move-exception v4

    .line 171
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImageThreadLoader"

    const-string/jumbo v8, "Error closing stream."

    invoke-static {v7, v8}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 165
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "conn":Ljava/net/URLConnection;
    :catchall_86
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_70

    .line 162
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_89
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_50

    .line 160
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_8c
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_30
.end method


# virtual methods
.method public loadImage(Ljava/lang/String;Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 117
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 118
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1a

    .line 119
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 135
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_19
    :goto_19
    return-object v2

    .line 123
    :cond_1a
    new-instance v0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;

    invoke-direct {v0, p0, v2}, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;-><init>(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$1;)V

    .line 124
    .local v0, "item":Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;->url:Ljava/net/URL;

    .line 125
    iput-object p2, v0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;->listener:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;

    .line 126
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->Queue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_3d

    .line 130
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_19

    .line 131
    :cond_3d
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_19

    .line 132
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->runner:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    .line 133
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_19
.end method
