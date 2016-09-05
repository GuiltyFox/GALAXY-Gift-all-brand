.class public Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
.super Ljava/lang/Object;
.source "NetscapeDraftHeaderParser.java"


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->a:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;
    .registers 11

    .prologue
    const/16 v7, 0x3b

    const/4 v0, 0x1

    .line 75
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v3

    .line 78
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v1

    .line 79
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->a()I

    move-result v5

    .line 83
    :goto_10
    if-ge v3, v5, :cond_1a

    .line 84
    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v4

    .line 85
    const/16 v6, 0x3d

    if-ne v4, v6, :cond_2e

    .line 95
    :cond_1a
    :goto_1a
    if-ne v3, v5, :cond_35

    .line 97
    invoke-virtual {p1, v1, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v0

    .line 103
    :goto_22
    if-eqz v1, :cond_3e

    .line 104
    invoke-virtual {p2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 105
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_2d
    return-object v0

    .line 88
    :cond_2e
    if-ne v4, v7, :cond_32

    move v2, v0

    .line 90
    goto :goto_1a

    .line 92
    :cond_32
    add-int/lit8 v3, v3, 0x1

    .line 93
    goto :goto_10

    .line 99
    :cond_35
    invoke-virtual {p1, v1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    move v1, v2

    goto :goto_22

    :cond_3e
    move v2, v3

    .line 112
    :goto_3f
    if-ge v2, v5, :cond_80

    .line 113
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v6

    .line 114
    if-ne v6, v7, :cond_57

    .line 123
    :goto_47
    if-ge v3, v2, :cond_7e

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 124
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_47

    .line 118
    :cond_57
    add-int/lit8 v2, v2, 0x1

    .line 119
    goto :goto_3f

    .line 127
    :goto_5a
    if-le v1, v3, :cond_6b

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 128
    add-int/lit8 v1, v1, -0x1

    goto :goto_5a

    .line 130
    :cond_6b
    invoke-virtual {p1, v3, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    if-eqz v0, :cond_7c

    .line 132
    add-int/lit8 v0, v2, 0x1

    .line 134
    :goto_73
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 135
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v0, v4, v1}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_7c
    move v0, v2

    goto :goto_73

    :cond_7e
    move v1, v2

    goto :goto_5a

    :cond_80
    move v0, v1

    goto :goto_47
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;
    .registers 8

    .prologue
    .line 60
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    :goto_15
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v2

    if-nez v2, :cond_23

    .line 65
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v2

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 68
    :cond_23
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    .line 69
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/NameValuePair;

    invoke-direct {v2, v3, v4, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V

    return-object v2
.end method
