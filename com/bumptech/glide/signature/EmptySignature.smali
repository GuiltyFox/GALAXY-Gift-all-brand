.class public final Lcom/bumptech/glide/signature/EmptySignature;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final a:Lcom/bumptech/glide/signature/EmptySignature;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/bumptech/glide/signature/EmptySignature;

    invoke-direct {v0}, Lcom/bumptech/glide/signature/EmptySignature;-><init>()V

    sput-object v0, Lcom/bumptech/glide/signature/EmptySignature;->a:Lcom/bumptech/glide/signature/EmptySignature;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lcom/bumptech/glide/signature/EmptySignature;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/bumptech/glide/signature/EmptySignature;->a:Lcom/bumptech/glide/signature/EmptySignature;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 2

    .prologue
    .line 25
    return-void
.end method
