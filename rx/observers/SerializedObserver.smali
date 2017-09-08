.class public Lrx/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private volatile c:Z

.field private d:Lrx/observers/SerializedObserver$FastList;

.field private final e:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/SerializedObserver;->e:Lrx/internal/operators/NotificationLite;

    .line 71
    iput-object p1, p0, Lrx/observers/SerializedObserver;->a:Lrx/Observer;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 135
    invoke-static {p1}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 136
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z

    if-eqz v0, :cond_8

    .line 160
    :goto_7
    return-void

    .line 139
    :cond_8
    monitor-enter p0

    .line 140
    :try_start_9
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z

    if-eqz v0, :cond_12

    .line 141
    monitor-exit p0

    goto :goto_7

    .line 158
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0

    .line 143
    :cond_12
    const/4 v0, 0x1

    :try_start_13
    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z

    .line 144
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->b:Z

    if-eqz v0, :cond_2f

    .line 149
    iget-object v0, p0, Lrx/observers/SerializedObserver;->d:Lrx/observers/SerializedObserver$FastList;

    .line 150
    if-nez v0, :cond_24

    .line 151
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 152
    iput-object v0, p0, Lrx/observers/SerializedObserver;->d:Lrx/observers/SerializedObserver$FastList;

    .line 154
    :cond_24
    iget-object v1, p0, Lrx/observers/SerializedObserver;->e:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->a(Ljava/lang/Object;)V

    .line 155
    monitor-exit p0

    goto :goto_7

    .line 157
    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->b:Z

    .line 158
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_f

    .line 159
    iget-object v0, p0, Lrx/observers/SerializedObserver;->a:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->a(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public a_(Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 76
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z

    if-eqz v0, :cond_7

    .line 126
    :goto_6
    return-void

    .line 79
    :cond_7
    monitor-enter p0

    .line 80
    :try_start_8
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z

    if-eqz v0, :cond_11

    .line 81
    monitor-exit p0

    goto :goto_6

    .line 93
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v0

    .line 83
    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->b:Z

    if-eqz v0, :cond_2b

    .line 84
    iget-object v0, p0, Lrx/observers/SerializedObserver;->d:Lrx/observers/SerializedObserver$FastList;

    .line 85
    if-nez v0, :cond_20

    .line 86
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 87
    iput-object v0, p0, Lrx/observers/SerializedObserver;->d:Lrx/observers/SerializedObserver$FastList;

    .line 89
    :cond_20
    iget-object v1, p0, Lrx/observers/SerializedObserver;->e:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->a(Ljava/lang/Object;)V

    .line 90
    monitor-exit p0

    goto :goto_6

    .line 92
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->b:Z

    .line 93
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_e

    .line 95
    :try_start_2f
    iget-object v0, p0, Lrx/observers/SerializedObserver;->a:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->a_(Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_34} :catch_46

    :cond_34
    move v2, v1

    .line 103
    :goto_35
    const/16 v0, 0x400

    if-ge v2, v0, :cond_34

    .line 105
    monitor-enter p0

    .line 106
    :try_start_3a
    iget-object v0, p0, Lrx/observers/SerializedObserver;->d:Lrx/observers/SerializedObserver$FastList;

    .line 107
    if-nez v0, :cond_56

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->b:Z

    .line 109
    monitor-exit p0

    goto :goto_6

    .line 112
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_43

    throw v0

    .line 96
    :catch_46
    move-exception v0

    .line 97
    iput-boolean v8, p0, Lrx/observers/SerializedObserver;->c:Z

    .line 98
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 99
    iget-object v1, p0, Lrx/observers/SerializedObserver;->a:Lrx/Observer;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lrx/Observer;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 111
    :cond_56
    const/4 v3, 0x0

    :try_start_57
    iput-object v3, p0, Lrx/observers/SerializedObserver;->d:Lrx/observers/SerializedObserver$FastList;

    .line 112
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_43

    .line 113
    iget-object v3, v0, Lrx/observers/SerializedObserver$FastList;->a:[Ljava/lang/Object;

    array-length v4, v3

    move v0, v1

    :goto_5e
    if-ge v0, v4, :cond_64

    aget-object v5, v3, v0

    .line 114
    if-nez v5, :cond_68

    .line 103
    :cond_64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    .line 118
    :cond_68
    :try_start_68
    iget-object v6, p0, Lrx/observers/SerializedObserver;->e:Lrx/internal/operators/NotificationLite;

    iget-object v7, p0, Lrx/observers/SerializedObserver;->a:Lrx/Observer;

    invoke-virtual {v6, v7, v5}, Lrx/internal/operators/NotificationLite;->a(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_75} :catch_76

    goto :goto_6

    .line 122
    :catch_76
    move-exception v0

    .line 123
    iput-boolean v8, p0, Lrx/observers/SerializedObserver;->c:Z

    .line 124
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 125
    iget-object v1, p0, Lrx/observers/SerializedObserver;->a:Lrx/Observer;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lrx/Observer;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 113
    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e
.end method

.method public n_()V
    .registers 3

    .prologue
    .line 164
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z

    if-eqz v0, :cond_5

    .line 184
    :goto_4
    return-void

    .line 167
    :cond_5
    monitor-enter p0

    .line 168
    :try_start_6
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z

    if-eqz v0, :cond_f

    .line 169
    monitor-exit p0

    goto :goto_4

    .line 182
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v0

    .line 171
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->c:Z

    .line 172
    iget-boolean v0, p0, Lrx/observers/SerializedObserver;->b:Z

    if-eqz v0, :cond_2c

    .line 173
    iget-object v0, p0, Lrx/observers/SerializedObserver;->d:Lrx/observers/SerializedObserver$FastList;

    .line 174
    if-nez v0, :cond_21

    .line 175
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 176
    iput-object v0, p0, Lrx/observers/SerializedObserver;->d:Lrx/observers/SerializedObserver$FastList;

    .line 178
    :cond_21
    iget-object v1, p0, Lrx/observers/SerializedObserver;->e:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->a(Ljava/lang/Object;)V

    .line 179
    monitor-exit p0

    goto :goto_4

    .line 181
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->b:Z

    .line 182
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_c

    .line 183
    iget-object v0, p0, Lrx/observers/SerializedObserver;->a:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->n_()V

    goto :goto_4
.end method
