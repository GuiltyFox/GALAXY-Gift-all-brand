.class public Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;
.super Ljava/lang/Object;
.source "HttpParams.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;->b:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;->b:Ljava/lang/String;

    return-object v0
.end method
