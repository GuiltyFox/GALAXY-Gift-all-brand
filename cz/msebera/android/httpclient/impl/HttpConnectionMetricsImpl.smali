.class public Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

.field private final b:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)V
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->c:J

    .line 53
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->d:J

    .line 64
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->a:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    .line 65
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->b:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    .line 66
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 91
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->c:J

    .line 92
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 99
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->d:J

    .line 100
    return-void
.end method
