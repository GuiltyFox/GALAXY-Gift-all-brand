.class public final Lcz/msebera/android/httpclient/client/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final a:Ljava/util/TimeZone;

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v4, "EEE MMM d HH:mm:ss yyyy"

    aput-object v4, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/DateUtils;->b:[Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/DateUtils;->a:Ljava/util/TimeZone;

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/DateUtils;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    const/16 v1, 0x7d0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 83
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/DateUtils;->c:Ljava/util/Date;

    .line 85
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    const-string/jumbo v0, "Date value"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    if-eqz p1, :cond_4b

    .line 129
    :goto_a
    if-eqz p2, :cond_4e

    .line 133
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2e

    const-string/jumbo v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 137
    :cond_2e
    array-length v3, p1

    move v1, v2

    :goto_30
    if-ge v1, v3, :cond_55

    aget-object v0, p1, v1

    .line 138
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils$DateFormatHolder;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 140
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 141
    invoke-virtual {v0, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 142
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-eqz v4, :cond_51

    .line 146
    :goto_4a
    return-object v0

    .line 128
    :cond_4b
    sget-object p1, Lcz/msebera/android/httpclient/client/utils/DateUtils;->b:[Ljava/lang/String;

    goto :goto_a

    .line 129
    :cond_4e
    sget-object p2, Lcz/msebera/android/httpclient/client/utils/DateUtils;->c:Ljava/util/Date;

    goto :goto_c

    .line 137
    :cond_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    .line 146
    :cond_55
    const/4 v0, 0x0

    goto :goto_4a
.end method
