.class public Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;
.super Ljava/lang/Object;
.source "HttpTransportMetricsImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpTransportMetrics;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->a:J

    .line 45
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 6

    .prologue
    .line 56
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->a:J

    .line 57
    return-void
.end method
