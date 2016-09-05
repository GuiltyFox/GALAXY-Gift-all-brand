.class public Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HeaderElementIterator;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/HeaderIterator;

.field private final b:Lcz/msebera/android/httpclient/message/HeaderValueParser;

.field private c:Lcz/msebera/android/httpclient/HeaderElement;

.field private d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field private e:Lcz/msebera/android/httpclient/message/ParserCursor;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HeaderIterator;)V
    .registers 3

    .prologue
    .line 68
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->b:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;Lcz/msebera/android/httpclient/message/HeaderValueParser;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HeaderIterator;Lcz/msebera/android/httpclient/message/HeaderValueParser;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c:Lcz/msebera/android/httpclient/HeaderElement;

    .line 53
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 54
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 62
    const-string/jumbo v0, "Header iterator"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HeaderIterator;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    .line 63
    const-string/jumbo v0, "Parser"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/message/HeaderValueParser;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->b:Lcz/msebera/android/httpclient/message/HeaderValueParser;

    .line 64
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 73
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 74
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 75
    :cond_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->a()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 77
    instance-of v0, v1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_3a

    move-object v0, v1

    .line 78
    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->a()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 79
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v0, v3, v2}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    check-cast v1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/FormattedHeader;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 92
    :cond_39
    :goto_39
    return-void

    .line 83
    :cond_3a
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 86
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    goto :goto_39
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 96
    :cond_1
    :goto_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    if-eqz v0, :cond_44

    .line 97
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 99
    :cond_19
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->b()V

    .line 102
    :cond_1c
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    if-eqz v0, :cond_1

    .line 104
    :cond_20
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v0

    if-nez v0, :cond_45

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->b:Lcz/msebera/android/httpclient/message/HeaderValueParser;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_42

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 108
    :cond_42
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c:Lcz/msebera/android/httpclient/HeaderElement;

    .line 120
    :cond_44
    return-void

    .line 113
    :cond_45
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iput-object v3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->e:Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 116
    iput-object v3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    goto :goto_1
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/HeaderElement;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c:Lcz/msebera/android/httpclient/HeaderElement;

    if-nez v0, :cond_7

    .line 131
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c()V

    .line 134
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c:Lcz/msebera/android/httpclient/HeaderElement;

    if-nez v0, :cond_14

    .line 135
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No more header elements available"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c:Lcz/msebera/android/httpclient/HeaderElement;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c:Lcz/msebera/android/httpclient/HeaderElement;

    .line 140
    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c:Lcz/msebera/android/httpclient/HeaderElement;

    if-nez v0, :cond_7

    .line 124
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c()V

    .line 126
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->c:Lcz/msebera/android/httpclient/HeaderElement;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->a()Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
