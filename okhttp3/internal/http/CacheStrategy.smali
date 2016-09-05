.class public final Lokhttp3/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field public final a:Lokhttp3/Request;

.field public final b:Lokhttp3/Response;


# direct methods
.method private constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lokhttp3/internal/http/CacheStrategy;->a:Lokhttp3/Request;

    .line 54
    iput-object p2, p0, Lokhttp3/internal/http/CacheStrategy;->b:Lokhttp3/Response;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-void
.end method

.method public static a(Lokhttp3/Response;Lokhttp3/Request;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0}, Lokhttp3/Response;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_48

    .line 95
    :cond_8
    :goto_8
    return v0

    .line 81
    :sswitch_9
    const-string/jumbo v1, "Expires"

    invoke-virtual {p0, v1}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    .line 82
    invoke-virtual {p0}, Lokhttp3/Response;->i()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_31

    .line 83
    invoke-virtual {p0}, Lokhttp3/Response;->i()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->e()Z

    move-result v1

    if-nez v1, :cond_31

    .line 84
    invoke-virtual {p0}, Lokhttp3/Response;->i()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 95
    :cond_31
    :sswitch_31
    invoke-virtual {p0}, Lokhttp3/Response;->i()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lokhttp3/Request;->f()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->b()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    .line 61
    nop

    :sswitch_data_48
    .sparse-switch
        0xc8 -> :sswitch_31
        0xcb -> :sswitch_31
        0xcc -> :sswitch_31
        0x12c -> :sswitch_31
        0x12d -> :sswitch_31
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_31
        0x194 -> :sswitch_31
        0x195 -> :sswitch_31
        0x19a -> :sswitch_31
        0x19e -> :sswitch_31
        0x1f5 -> :sswitch_31
    .end sparse-switch
.end method
