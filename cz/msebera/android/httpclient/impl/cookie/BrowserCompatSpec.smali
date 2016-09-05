.class public Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;
.super Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 68
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 128
    const/4 v0, 0x0

    sget-object v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->a:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    .line 129
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 123
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->a:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    .line 124
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V
    .registers 6

    .prologue
    .line 89
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;-><init>()V

    .line 90
    if-eqz p1, :cond_21

    .line 91
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->b:[Ljava/lang/String;

    .line 95
    :goto_d
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$2;->a:[I

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_82

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unknown security level"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_21
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->b:[Ljava/lang/String;

    goto :goto_d

    .line 97
    :pswitch_26
    const-string/jumbo v0, "path"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 112
    :goto_31
    const-string/jumbo v0, "domain"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 113
    const-string/jumbo v0, "max-age"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 114
    const-string/jumbo v0, "secure"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 115
    const-string/jumbo v0, "comment"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 116
    const-string/jumbo v0, "expires"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->b:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 118
    const-string/jumbo v0, "version"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 119
    return-void

    .line 100
    :pswitch_76
    const-string/jumbo v0, "path"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$1;

    invoke-direct {v1, p0}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$1;-><init>(Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;)V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    goto :goto_31

    .line 95
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_26
        :pswitch_76
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 203
    if-eqz p0, :cond_16

    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 133
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string/jumbo v2, "Set-Cookie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 137
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized cookie header \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_40
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->e()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v5

    .line 143
    array-length v6, v5

    move v3, v4

    move v2, v4

    move v0, v4

    :goto_48
    if-ge v3, v6, :cond_63

    aget-object v7, v5, v3

    .line 144
    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/HeaderElement;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_56

    move v0, v1

    .line 147
    :cond_56
    const-string/jumbo v8, "expires"

    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/HeaderElement;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_60

    move v2, v1

    .line 143
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 151
    :cond_63
    if-nez v2, :cond_67

    if-nez v0, :cond_10e

    .line 154
    :cond_67
    sget-object v3, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->a:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    .line 157
    instance-of v0, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_a0

    move-object v0, p1

    .line 158
    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->a()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    .line 159
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    .line 160
    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->b()I

    move-result v5

    .line 161
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 171
    :goto_83
    invoke-virtual {v3, v1, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->b()Ljava/lang/String;

    move-result-object v3

    .line 174
    if-eqz v1, :cond_97

    invoke-static {v1}, Lcz/msebera/android/httpclient/util/TextUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 175
    :cond_97
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Cookie name may not be empty"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_a0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 164
    if-nez v0, :cond_af

    .line 165
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_af
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 168
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_83

    .line 177
    :cond_c5
    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-direct {v5, v1, v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->e(Ljava/lang/String;)V

    .line 179
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->b(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->d(Ljava/lang/String;)V

    .line 182
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->c()[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v1

    .line 183
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_df
    if-ltz v0, :cond_104

    .line 184
    aget-object v3, v1, v0

    .line 185
    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    move-result-object v6

    .line 188
    if-eqz v6, :cond_101

    .line 189
    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    .line 183
    :cond_101
    add-int/lit8 v0, v0, -0x1

    goto :goto_df

    .line 193
    :cond_104
    if-eqz v2, :cond_109

    .line 194
    invoke-virtual {v5, v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->a(I)V

    .line 196
    :cond_109
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 198
    :goto_10d
    return-object v0

    :cond_10e
    invoke-virtual {p0, v5, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_10d
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string/jumbo v0, "List of cookies"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 208
    new-instance v3, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 209
    const-string/jumbo v0, "Cookie"

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, ": "

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    move v1, v2

    .line 211
    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_64

    .line 212
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 213
    if-lez v1, :cond_33

    .line 214
    const-string/jumbo v4, "; "

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 216
    :cond_33
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->b()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v0

    if-lez v0, :cond_55

    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 219
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->b:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    new-instance v6, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    invoke-direct {v6, v4, v5}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v6, v2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 211
    :cond_51
    :goto_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 225
    :cond_55
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "="

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 227
    if-eqz v5, :cond_51

    .line 228
    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_51

    .line 232
    :cond_64
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    new-instance v1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0
.end method

.method public b()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const-string/jumbo v0, "compatibility"

    return-object v0
.end method
