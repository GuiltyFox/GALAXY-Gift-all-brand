.class public final Lorg/apache/http/entity/mime/MIME;
.super Ljava/lang/Object;
.source "MIME.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lorg/apache/http/Consts;->b:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    .line 51
    sget-object v0, Lorg/apache/http/Consts;->a:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/http/entity/mime/MIME;->b:Ljava/nio/charset/Charset;

    return-void
.end method
