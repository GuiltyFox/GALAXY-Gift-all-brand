.class public Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;
.super Ljava/lang/Object;
.source "SystemDefaultDnsResolver.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/DnsResolver;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;->a:Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 44
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
