.class public Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;
.super Ljava/lang/Object;
.source "UriPatternMatcher.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized getObjects()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lookup(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    monitor-enter p0

    :try_start_1
    const-string/jumbo v3, "Request path"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iget-object v3, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_53

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v3, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 130
    if-eqz v0, :cond_4b

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_4b

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1a

    const-string/jumbo v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 133
    :cond_4b
    iget-object v4, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_55

    move-result-object v1

    .line 134
    move-object v0, v2

    goto :goto_1a

    .line 139
    .end local v0    # "bestMatch":Ljava/lang/String;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_53
    monitor-exit p0

    return-object v1

    .line 121
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_55
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 151
    const-string/jumbo v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 156
    :goto_b
    return v1

    .line 154
    :cond_c
    const-string/jumbo v2, "*"

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    :cond_25
    const-string/jumbo v2, "*"

    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_3c
    move v0, v1

    :cond_3d
    move v1, v0

    goto :goto_b
.end method

.method public declared-synchronized register(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "URI request pattern"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 72
    monitor-exit p0

    return-void

    .line 70
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHandlers(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "Map of handlers"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setObjects(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "Map of handlers"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 104
    monitor-exit p0

    return-void

    .line 101
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregister(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 80
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;, "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<TT;>;"
    monitor-enter p0

    if-nez p1, :cond_5

    .line 84
    :goto_3
    monitor-exit p0

    return-void

    .line 83
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_3

    .line 80
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
