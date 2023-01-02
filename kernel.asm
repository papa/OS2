
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	97013103          	ld	sp,-1680(sp) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2a4060ef          	jal	ra,800062c0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	534030ef          	jal	ra,800045bc <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078a63          	beqz	a5,8000127c <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    80001270:	00150513          	addi	a0,a0,1
    80001274:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    80001278:	fedff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    8000127c:	00f58023          	sb	a5,0(a1)
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    8000128c:	fd010113          	addi	sp,sp,-48
    80001290:	02113423          	sd	ra,40(sp)
    80001294:	02813023          	sd	s0,32(sp)
    80001298:	00913c23          	sd	s1,24(sp)
    8000129c:	01213823          	sd	s2,16(sp)
    800012a0:	01313423          	sd	s3,8(sp)
    800012a4:	01413023          	sd	s4,0(sp)
    800012a8:	03010413          	addi	s0,sp,48
    if(slab == nullptr) return 0;
    800012ac:	04050463          	beqz	a0,800012f4 <_Z17destroy_slab_listPP6slab_s+0x68>
    800012b0:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    800012b4:	00053783          	ld	a5,0(a0)
    800012b8:	0107b783          	ld	a5,16(a5)
    800012bc:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    800012c0:	00000913          	li	s2,0
    while(*slab != nullptr)
    800012c4:	0004b583          	ld	a1,0(s1)
    800012c8:	02058863          	beqz	a1,800012f8 <_Z17destroy_slab_listPP6slab_s+0x6c>
    {
        slab_t* nextSlab = (*slab)->next;
    800012cc:	0085ba03          	ld	s4,8(a1)
        buddy_free(slabAllocator->buddy, *slab, sz);
    800012d0:	00098613          	mv	a2,s3
    800012d4:	0000a797          	auipc	a5,0xa
    800012d8:	73c7b783          	ld	a5,1852(a5) # 8000ba10 <_ZL13slabAllocator>
    800012dc:	0007b503          	ld	a0,0(a5)
    800012e0:	00002097          	auipc	ra,0x2
    800012e4:	e64080e7          	jalr	-412(ra) # 80003144 <_Z10buddy_freeP14buddyAllocatorPvm>
        *slab = nextSlab;
    800012e8:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    800012ec:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    800012f0:	fd5ff06f          	j	800012c4 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(slab == nullptr) return 0;
    800012f4:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    800012f8:	00090513          	mv	a0,s2
    800012fc:	02813083          	ld	ra,40(sp)
    80001300:	02013403          	ld	s0,32(sp)
    80001304:	01813483          	ld	s1,24(sp)
    80001308:	01013903          	ld	s2,16(sp)
    8000130c:	00813983          	ld	s3,8(sp)
    80001310:	00013a03          	ld	s4,0(sp)
    80001314:	03010113          	addi	sp,sp,48
    80001318:	00008067          	ret

000000008000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    8000131c:	fc010113          	addi	sp,sp,-64
    80001320:	02113c23          	sd	ra,56(sp)
    80001324:	02813823          	sd	s0,48(sp)
    80001328:	02913423          	sd	s1,40(sp)
    8000132c:	03213023          	sd	s2,32(sp)
    80001330:	01313c23          	sd	s3,24(sp)
    80001334:	01413823          	sd	s4,16(sp)
    80001338:	01513423          	sd	s5,8(sp)
    8000133c:	04010413          	addi	s0,sp,64
    80001340:	00050493          	mv	s1,a0
    80001344:	00058513          	mv	a0,a1
    80001348:	00060a93          	mv	s5,a2
    8000134c:	00068a13          	mv	s4,a3
    80001350:	00070993          	mv	s3,a4
    80001354:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    80001358:	00048593          	mv	a1,s1
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	efc080e7          	jalr	-260(ra) # 80001258 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    80001364:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    80001368:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    8000136c:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    80001370:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    80001374:	0404b423          	sd	zero,72(s1)
    80001378:	0404b823          	sd	zero,80(s1)
    8000137c:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    80001380:	0604ac23          	sw	zero,120(s1)
}
    80001384:	03813083          	ld	ra,56(sp)
    80001388:	03013403          	ld	s0,48(sp)
    8000138c:	02813483          	ld	s1,40(sp)
    80001390:	02013903          	ld	s2,32(sp)
    80001394:	01813983          	ld	s3,24(sp)
    80001398:	01013a03          	ld	s4,16(sp)
    8000139c:	00813a83          	ld	s5,8(sp)
    800013a0:	04010113          	addi	sp,sp,64
    800013a4:	00008067          	ret

00000000800013a8 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013a8:	fe010113          	addi	sp,sp,-32
    800013ac:	00113c23          	sd	ra,24(sp)
    800013b0:	00813823          	sd	s0,16(sp)
    800013b4:	00913423          	sd	s1,8(sp)
    800013b8:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800013bc:	0e050493          	addi	s1,a0,224

    slabAllocatorLocal->buddy = buddy;
    800013c0:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013c4:	00000793          	li	a5,0
    800013c8:	0140006f          	j	800013dc <_Z19slab_allocator_initP14buddyAllocator+0x34>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800013cc:	00379713          	slli	a4,a5,0x3
    800013d0:	00e50733          	add	a4,a0,a4
    800013d4:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013d8:	00178793          	addi	a5,a5,1
    800013dc:	00c00713          	li	a4,12
    800013e0:	fef776e3          	bgeu	a4,a5,800013cc <_Z19slab_allocator_initP14buddyAllocator+0x24>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    800013e4:	00000793          	li	a5,0
    800013e8:	00000713          	li	a4,0
    800013ec:	08000693          	li	a3,128
    800013f0:	00200613          	li	a2,2
    800013f4:	00008597          	auipc	a1,0x8
    800013f8:	c2c58593          	addi	a1,a1,-980 # 80009020 <CONSOLE_STATUS+0x10>
    800013fc:	15050513          	addi	a0,a0,336
    80001400:	00000097          	auipc	ra,0x0
    80001404:	f1c080e7          	jalr	-228(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001408:	00048513          	mv	a0,s1
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret

0000000080001420 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000142c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001430:	01d7d79b          	srliw	a5,a5,0x1d
    80001434:	00b785bb          	addw	a1,a5,a1
    80001438:	4035d71b          	sraiw	a4,a1,0x3
    8000143c:	00e50533          	add	a0,a0,a4
    80001440:	02854503          	lbu	a0,40(a0)
    80001444:	0075f593          	andi	a1,a1,7
    80001448:	40f585bb          	subw	a1,a1,a5
    8000144c:	40b5553b          	sraw	a0,a0,a1
}
    80001450:	00157513          	andi	a0,a0,1
    80001454:	00813403          	ld	s0,8(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	02850703          	lb	a4,40(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	00100793          	li	a5,1
    80001490:	00b795bb          	sllw	a1,a5,a1
    80001494:	00b765b3          	or	a1,a4,a1
    80001498:	02b50423          	sb	a1,40(a0)
}
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014a8:	fd010113          	addi	sp,sp,-48
    800014ac:	02113423          	sd	ra,40(sp)
    800014b0:	02813023          	sd	s0,32(sp)
    800014b4:	00913c23          	sd	s1,24(sp)
    800014b8:	01213823          	sd	s2,16(sp)
    800014bc:	01313423          	sd	s3,8(sp)
    800014c0:	03010413          	addi	s0,sp,48
    800014c4:	00050913          	mv	s2,a0
    if(slab == nullptr)
    800014c8:	08050863          	beqz	a0,80001558 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014cc:	00000493          	li	s1,0
    800014d0:	01893783          	ld	a5,24(s2)
    800014d4:	02f4fe63          	bgeu	s1,a5,80001510 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    800014d8:	0004899b          	sext.w	s3,s1
    800014dc:	00098593          	mv	a1,s3
    800014e0:	00090513          	mv	a0,s2
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f3c080e7          	jalr	-196(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    800014ec:	00050663          	beqz	a0,800014f8 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014f0:	00148493          	addi	s1,s1,1
    800014f4:	fddff06f          	j	800014d0 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    800014f8:	01093783          	ld	a5,16(s2)
    800014fc:	0607b783          	ld	a5,96(a5)
    80001500:	029784b3          	mul	s1,a5,s1
    80001504:	009904b3          	add	s1,s2,s1
    80001508:	04848493          	addi	s1,s1,72
            index = i;
            break;
    8000150c:	00c0006f          	j	80001518 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001510:	00000493          	li	s1,0
    int index = -1;
    80001514:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001518:	02048063          	beqz	s1,80001538 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    //KConsole::trapPrintStringInt("Allocated index ",index);

    setAllocatedIndex(slab, index);
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000152c:	02093783          	ld	a5,32(s2)
    80001530:	00178793          	addi	a5,a5,1
    80001534:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001538:	00048513          	mv	a0,s1
    8000153c:	02813083          	ld	ra,40(sp)
    80001540:	02013403          	ld	s0,32(sp)
    80001544:	01813483          	ld	s1,24(sp)
    80001548:	01013903          	ld	s2,16(sp)
    8000154c:	00813983          	ld	s3,8(sp)
    80001550:	03010113          	addi	sp,sp,48
    80001554:	00008067          	ret
        return nullptr;
    80001558:	00050493          	mv	s1,a0
    8000155c:	fddff06f          	j	80001538 <_Z14allocateObjectP6slab_s+0x90>

0000000080001560 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00813423          	sd	s0,8(sp)
    80001568:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    8000156c:	02053783          	ld	a5,32(a0)
    80001570:	01853503          	ld	a0,24(a0)
    80001574:	40f50533          	sub	a0,a0,a5
}
    80001578:	00153513          	seqz	a0,a0
    8000157c:	00813403          	ld	s0,8(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001594:	02053503          	ld	a0,32(a0)
}
    80001598:	00153513          	seqz	a0,a0
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015b4:	00050e63          	beqz	a0,800015d0 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015b8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015bc:	0005b783          	ld	a5,0(a1)
    800015c0:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    800015c4:	00078463          	beqz	a5,800015cc <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    800015c8:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    800015cc:	00a5b023          	sd	a0,0(a1)
}
    800015d0:	00813403          	ld	s0,8(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00813423          	sd	s0,8(sp)
    800015e4:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    800015e8:	00053783          	ld	a5,0(a0)
    800015ec:	02078663          	beqz	a5,80001618 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    800015f0:	00853703          	ld	a4,8(a0)
    800015f4:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    800015f8:	00070663          	beqz	a4,80001604 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    800015fc:	00053783          	ld	a5,0(a0)
    80001600:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001604:	00053023          	sd	zero,0(a0)
    80001608:	00053423          	sd	zero,8(a0)
    }
}
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001618:	00853783          	ld	a5,8(a0)
    8000161c:	00078463          	beqz	a5,80001624 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001620:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001624:	00853783          	ld	a5,8(a0)
    80001628:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000162c:	00053023          	sd	zero,0(a0)
    80001630:	00053423          	sd	zero,8(a0)
    80001634:	fd9ff06f          	j	8000160c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001638 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001638:	fe010113          	addi	sp,sp,-32
    8000163c:	00113c23          	sd	ra,24(sp)
    80001640:	00813823          	sd	s0,16(sp)
    80001644:	00913423          	sd	s1,8(sp)
    80001648:	01213023          	sd	s2,0(sp)
    8000164c:	02010413          	addi	s0,sp,32
    80001650:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001654:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001658:	05050593          	addi	a1,a0,80
    8000165c:	00090513          	mv	a0,s2
    80001660:	00000097          	auipc	ra,0x0
    80001664:	f7c080e7          	jalr	-132(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    80001668:	04848593          	addi	a1,s1,72
    8000166c:	00090513          	mv	a0,s2
    80001670:	00000097          	auipc	ra,0x0
    80001674:	f38080e7          	jalr	-200(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001678:	01813083          	ld	ra,24(sp)
    8000167c:	01013403          	ld	s0,16(sp)
    80001680:	00813483          	ld	s1,8(sp)
    80001684:	00013903          	ld	s2,0(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret

0000000080001690 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001690:	fe010113          	addi	sp,sp,-32
    80001694:	00113c23          	sd	ra,24(sp)
    80001698:	00813823          	sd	s0,16(sp)
    8000169c:	00913423          	sd	s1,8(sp)
    800016a0:	01213023          	sd	s2,0(sp)
    800016a4:	02010413          	addi	s0,sp,32
    800016a8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ac:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016b0:	04050593          	addi	a1,a0,64
    800016b4:	00090513          	mv	a0,s2
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	f24080e7          	jalr	-220(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    800016c0:	05048593          	addi	a1,s1,80
    800016c4:	00090513          	mv	a0,s2
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	ee0080e7          	jalr	-288(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016d0:	01813083          	ld	ra,24(sp)
    800016d4:	01013403          	ld	s0,16(sp)
    800016d8:	00813483          	ld	s1,8(sp)
    800016dc:	00013903          	ld	s2,0(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret

00000000800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	01213023          	sd	s2,0(sp)
    800016fc:	02010413          	addi	s0,sp,32
    80001700:	00050913          	mv	s2,a0
    80001704:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001708:	04850593          	addi	a1,a0,72
    8000170c:	00048513          	mv	a0,s1
    80001710:	00000097          	auipc	ra,0x0
    80001714:	ecc080e7          	jalr	-308(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001718:	05090593          	addi	a1,s2,80
    8000171c:	00048513          	mv	a0,s1
    80001720:	00000097          	auipc	ra,0x0
    80001724:	e88080e7          	jalr	-376(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	00013903          	ld	s2,0(sp)
    80001738:	02010113          	addi	sp,sp,32
    8000173c:	00008067          	ret

0000000080001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001740:	fe010113          	addi	sp,sp,-32
    80001744:	00113c23          	sd	ra,24(sp)
    80001748:	00813823          	sd	s0,16(sp)
    8000174c:	00913423          	sd	s1,8(sp)
    80001750:	01213023          	sd	s2,0(sp)
    80001754:	02010413          	addi	s0,sp,32
    80001758:	00050913          	mv	s2,a0
    8000175c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001760:	05050593          	addi	a1,a0,80
    80001764:	00048513          	mv	a0,s1
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	e74080e7          	jalr	-396(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    80001770:	04090593          	addi	a1,s2,64
    80001774:	00048513          	mv	a0,s1
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	e30080e7          	jalr	-464(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	00013903          	ld	s2,0(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    80001798:	fd010113          	addi	sp,sp,-48
    8000179c:	02113423          	sd	ra,40(sp)
    800017a0:	02813023          	sd	s0,32(sp)
    800017a4:	00913c23          	sd	s1,24(sp)
    800017a8:	01213823          	sd	s2,16(sp)
    800017ac:	01313423          	sd	s3,8(sp)
    800017b0:	03010413          	addi	s0,sp,48
    800017b4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    800017b8:	05853583          	ld	a1,88(a0)
    800017bc:	0000a797          	auipc	a5,0xa
    800017c0:	2547b783          	ld	a5,596(a5) # 8000ba10 <_ZL13slabAllocator>
    800017c4:	0007b503          	ld	a0,0(a5)
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	6ac080e7          	jalr	1708(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    if(newSlab == nullptr)
    800017d0:	08050c63          	beqz	a0,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    800017d4:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    800017d8:	0409b783          	ld	a5,64(s3)
    800017dc:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800017e0:	00078463          	beqz	a5,800017e8 <_Z12allocateSlabP12kmem_cache_s+0x50>
        cachep->slabs_empty->prev = newSlab;
    800017e4:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    800017e8:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    800017ec:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    800017f0:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    800017f4:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    800017f8:	0589b683          	ld	a3,88(s3)
    800017fc:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001800:	fb868693          	addi	a3,a3,-72
    80001804:	0609b783          	ld	a5,96(s3)
    80001808:	02f6d6b3          	divu	a3,a3,a5
    8000180c:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001810:	00000713          	li	a4,0
    80001814:	00768793          	addi	a5,a3,7
    80001818:	0037d793          	srli	a5,a5,0x3
    8000181c:	00f77a63          	bgeu	a4,a5,80001830 <_Z12allocateSlabP12kmem_cache_s+0x98>
        newSlab->allocated[i] = 0;
    80001820:	00e487b3          	add	a5,s1,a4
    80001824:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001828:	00170713          	addi	a4,a4,1
    8000182c:	fe9ff06f          	j	80001814 <_Z12allocateSlabP12kmem_cache_s+0x7c>

    //TODO test
    if(cachep->ctor != nullptr)
    80001830:	0689b783          	ld	a5,104(s3)
    80001834:	02078a63          	beqz	a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001838:	00000913          	li	s2,0
    8000183c:	0184b783          	ld	a5,24(s1)
    80001840:	02f97463          	bgeu	s2,a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001844:	0689b783          	ld	a5,104(s3)
    80001848:	0104b703          	ld	a4,16(s1)
    8000184c:	06073503          	ld	a0,96(a4)
    80001850:	03250533          	mul	a0,a0,s2
    80001854:	00a48533          	add	a0,s1,a0
    80001858:	04850513          	addi	a0,a0,72
    8000185c:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001860:	00190913          	addi	s2,s2,1
    80001864:	fd9ff06f          	j	8000183c <_Z12allocateSlabP12kmem_cache_s+0xa4>
    }
}
    80001868:	02813083          	ld	ra,40(sp)
    8000186c:	02013403          	ld	s0,32(sp)
    80001870:	01813483          	ld	s1,24(sp)
    80001874:	01013903          	ld	s2,16(sp)
    80001878:	00813983          	ld	s3,8(sp)
    8000187c:	03010113          	addi	sp,sp,48
    80001880:	00008067          	ret

0000000080001884 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00813423          	sd	s0,8(sp)
    8000188c:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001890:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001894:	04850713          	addi	a4,a0,72
    80001898:	00e7f663          	bgeu	a5,a4,800018a4 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    8000189c:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018a0:	ff5ff06f          	j	80001894 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018a4:	fb878593          	addi	a1,a5,-72 # fb8 <_entry-0x7ffff048>
    800018a8:	02a5f5b3          	remu	a1,a1,a0

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++) //TODO change constants
    800018ac:	00100693          	li	a3,1
    800018b0:	0080006f          	j	800018b8 <_Z18getOptimalSlabSizem+0x34>
    800018b4:	00168693          	addi	a3,a3,1
    800018b8:	00400713          	li	a4,4
    800018bc:	02d76063          	bltu	a4,a3,800018dc <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    800018c0:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800018c4:	fb860713          	addi	a4,a2,-72
    800018c8:	02a77733          	remu	a4,a4,a0
        if(newWaste < optimalWaste)
    800018cc:	feb774e3          	bgeu	a4,a1,800018b4 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800018d0:	00070593          	mv	a1,a4
            bestSize = newSize;
    800018d4:	00060793          	mv	a5,a2
    800018d8:	fddff06f          	j	800018b4 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800018dc:	00c7d513          	srli	a0,a5,0xc
    800018e0:	00813403          	ld	s0,8(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_Z8findSlabP12kmem_cache_sPKv>:
    return nullptr;
}*/

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00813423          	sd	s0,8(sp)
    800018f4:	01010413          	addi	s0,sp,16
    800018f8:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    800018fc:	02050c63          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001900:	06058a63          	beqz	a1,80001974 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001904:	04853503          	ld	a0,72(a0)
    80001908:	0080006f          	j	80001910 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    8000190c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001910:	02050863          	beqz	a0,80001940 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001914:	01853783          	ld	a5,24(a0)
    80001918:	01053703          	ld	a4,16(a0)
    8000191c:	06073703          	ld	a4,96(a4)
    80001920:	02e787b3          	mul	a5,a5,a4
    80001924:	00a787b3          	add	a5,a5,a0
    80001928:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    8000192c:	feb570e3          	bgeu	a0,a1,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
    80001930:	fcf5fee3          	bgeu	a1,a5,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001934:	00813403          	ld	s0,8(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001940:	0506b503          	ld	a0,80(a3)
    80001944:	0080006f          	j	8000194c <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001948:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000194c:	fe0504e3          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001950:	01853783          	ld	a5,24(a0)
    80001954:	01053703          	ld	a4,16(a0)
    80001958:	06073703          	ld	a4,96(a4)
    8000195c:	02e787b3          	mul	a5,a5,a4
    80001960:	00a787b3          	add	a5,a5,a0
    80001964:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001968:	feb570e3          	bgeu	a0,a1,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    8000196c:	fcf5fee3          	bgeu	a1,a5,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    80001970:	fc5ff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    80001974:	00058513          	mv	a0,a1
    80001978:	fbdff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>

000000008000197c <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00813423          	sd	s0,8(sp)
    80001984:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001988:	41f5d79b          	sraiw	a5,a1,0x1f
    8000198c:	01d7d79b          	srliw	a5,a5,0x1d
    80001990:	00b785bb          	addw	a1,a5,a1
    80001994:	4035d71b          	sraiw	a4,a1,0x3
    80001998:	00e50533          	add	a0,a0,a4
    8000199c:	02850703          	lb	a4,40(a0)
    800019a0:	0075f593          	andi	a1,a1,7
    800019a4:	40f585bb          	subw	a1,a1,a5
    800019a8:	00100793          	li	a5,1
    800019ac:	00b795bb          	sllw	a1,a5,a1
    800019b0:	fff5c593          	not	a1,a1
    800019b4:	00b775b3          	and	a1,a4,a1
    800019b8:	02b50423          	sb	a1,40(a0)
}
    800019bc:	00813403          	ld	s0,8(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	01213023          	sd	s2,0(sp)
    800019dc:	02010413          	addi	s0,sp,32
    800019e0:	00050913          	mv	s2,a0
    KConsole::trapPrintString("One slab info---------\n");
    800019e4:	00007517          	auipc	a0,0x7
    800019e8:	64c50513          	addi	a0,a0,1612 # 80009030 <CONSOLE_STATUS+0x20>
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	ca0080e7          	jalr	-864(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    800019f4:	01000613          	li	a2,16
    800019f8:	00090593          	mv	a1,s2
    800019fc:	00007517          	auipc	a0,0x7
    80001a00:	64c50513          	addi	a0,a0,1612 # 80009048 <CONSOLE_STATUS+0x38>
    80001a04:	00002097          	auipc	ra,0x2
    80001a08:	d60080e7          	jalr	-672(ra) # 80003764 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a0c:	00a00613          	li	a2,10
    80001a10:	02093583          	ld	a1,32(s2)
    80001a14:	00007517          	auipc	a0,0x7
    80001a18:	64450513          	addi	a0,a0,1604 # 80009058 <CONSOLE_STATUS+0x48>
    80001a1c:	00002097          	auipc	ra,0x2
    80001a20:	d48080e7          	jalr	-696(ra) # 80003764 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a24:	00a00613          	li	a2,10
    80001a28:	01893583          	ld	a1,24(s2)
    80001a2c:	00007517          	auipc	a0,0x7
    80001a30:	64c50513          	addi	a0,a0,1612 # 80009078 <CONSOLE_STATUS+0x68>
    80001a34:	00002097          	auipc	ra,0x2
    80001a38:	d30080e7          	jalr	-720(ra) # 80003764 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    80001a3c:	00000493          	li	s1,0
    80001a40:	01893783          	ld	a5,24(s2)
    80001a44:	00778793          	addi	a5,a5,7
    80001a48:	0037d793          	srli	a5,a5,0x3
    80001a4c:	02f4fa63          	bgeu	s1,a5,80001a80 <_Z13printSlabInfoP6slab_s+0xb8>
    {
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
    80001a50:	009907b3          	add	a5,s2,s1
    80001a54:	00000613          	li	a2,0
    80001a58:	01000593          	li	a1,16
    80001a5c:	0287c503          	lbu	a0,40(a5)
    80001a60:	00002097          	auipc	ra,0x2
    80001a64:	c70080e7          	jalr	-912(ra) # 800036d0 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80001a68:	00008517          	auipc	a0,0x8
    80001a6c:	b9050513          	addi	a0,a0,-1136 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80001a70:	00002097          	auipc	ra,0x2
    80001a74:	c1c080e7          	jalr	-996(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    80001a78:	00148493          	addi	s1,s1,1
    80001a7c:	fc5ff06f          	j	80001a40 <_Z13printSlabInfoP6slab_s+0x78>
    }
}
    80001a80:	01813083          	ld	ra,24(sp)
    80001a84:	01013403          	ld	s0,16(sp)
    80001a88:	00813483          	ld	s1,8(sp)
    80001a8c:	00013903          	ld	s2,0(sp)
    80001a90:	02010113          	addi	sp,sp,32
    80001a94:	00008067          	ret

0000000080001a98 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001a98:	10050263          	beqz	a0,80001b9c <_Z16free_slab_objectP6slab_sPKv+0x104>
{
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00113c23          	sd	ra,24(sp)
    80001aa4:	00813823          	sd	s0,16(sp)
    80001aa8:	00913423          	sd	s1,8(sp)
    80001aac:	01213023          	sd	s2,0(sp)
    80001ab0:	02010413          	addi	s0,sp,32
    80001ab4:	00050493          	mv	s1,a0
    if(slab == nullptr || objp == nullptr)
    80001ab8:	02058e63          	beqz	a1,80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001abc:	40a58933          	sub	s2,a1,a0
    80001ac0:	fb890913          	addi	s2,s2,-72
    80001ac4:	01053783          	ld	a5,16(a0)
    80001ac8:	0607b783          	ld	a5,96(a5)
    80001acc:	02f95933          	divu	s2,s2,a5
    80001ad0:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001ad4:	032787b3          	mul	a5,a5,s2
    80001ad8:	00f507b3          	add	a5,a0,a5
    80001adc:	04878793          	addi	a5,a5,72
    80001ae0:	00f59a63          	bne	a1,a5,80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001ae4:	00090593          	mv	a1,s2
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	938080e7          	jalr	-1736(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    80001af0:	00051e63          	bnez	a0,80001b0c <_Z16free_slab_objectP6slab_sPKv+0x74>
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
}
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	00013903          	ld	s2,0(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret
    resetAllocatedIndex(slab, indexOfObject);
    80001b0c:	00090593          	mv	a1,s2
    80001b10:	00048513          	mv	a0,s1
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	e68080e7          	jalr	-408(ra) # 8000197c <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b1c:	0184b703          	ld	a4,24(s1)
    80001b20:	0204b783          	ld	a5,32(s1)
    80001b24:	00f70c63          	beq	a4,a5,80001b3c <_Z16free_slab_objectP6slab_sPKv+0xa4>
    else if(slab->numOfAllocatedObjects == 1)
    80001b28:	00100713          	li	a4,1
    80001b2c:	04e78863          	beq	a5,a4,80001b7c <_Z16free_slab_objectP6slab_sPKv+0xe4>
        slab->numOfAllocatedObjects--;
    80001b30:	fff78793          	addi	a5,a5,-1
    80001b34:	02f4b023          	sd	a5,32(s1)
    80001b38:	fbdff06f          	j	80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
        removeFullSlab(slab->owner, slab);
    80001b3c:	00048593          	mv	a1,s1
    80001b40:	0104b503          	ld	a0,16(s1)
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	ba4080e7          	jalr	-1116(ra) # 800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b4c:	0204b783          	ld	a5,32(s1)
    80001b50:	fff78793          	addi	a5,a5,-1
    80001b54:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b58:	00048513          	mv	a0,s1
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	a2c080e7          	jalr	-1492(ra) # 80001588 <_Z5emptyP6slab_s>
    80001b64:	f80508e3          	beqz	a0,80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
            removePartialSlab(slab->owner, slab);
    80001b68:	00048593          	mv	a1,s1
    80001b6c:	0104b503          	ld	a0,16(s1)
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	bd0080e7          	jalr	-1072(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001b78:	f7dff06f          	j	80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
        removePartialSlab(slab->owner, slab);
    80001b7c:	00048593          	mv	a1,s1
    80001b80:	0104b503          	ld	a0,16(s1)
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	bbc080e7          	jalr	-1092(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b8c:	0204b783          	ld	a5,32(s1)
    80001b90:	fff78793          	addi	a5,a5,-1
    80001b94:	02f4b023          	sd	a5,32(s1)
    80001b98:	f5dff06f          	j	80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
    80001b9c:	00008067          	ret

0000000080001ba0 <_Z9kmem_initPvi>:
    }
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00113423          	sd	ra,8(sp)
    80001ba8:	00813023          	sd	s0,0(sp)
    80001bac:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	4b4080e7          	jalr	1204(ra) # 80003064 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001bb8:	fffff097          	auipc	ra,0xfffff
    80001bbc:	7f0080e7          	jalr	2032(ra) # 800013a8 <_Z19slab_allocator_initP14buddyAllocator>
    80001bc0:	0000a797          	auipc	a5,0xa
    80001bc4:	e4a7b823          	sd	a0,-432(a5) # 8000ba10 <_ZL13slabAllocator>
    //printSlabAllocatorInfo();
}
    80001bc8:	00813083          	ld	ra,8(sp)
    80001bcc:	00013403          	ld	s0,0(sp)
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00008067          	ret

0000000080001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001bd8:	fe010113          	addi	sp,sp,-32
    80001bdc:	00113c23          	sd	ra,24(sp)
    80001be0:	00813823          	sd	s0,16(sp)
    80001be4:	00913423          	sd	s1,8(sp)
    80001be8:	01213023          	sd	s2,0(sp)
    80001bec:	02010413          	addi	s0,sp,32
    80001bf0:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001bf4:	10050a63          	beqz	a0,80001d08 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001bf8:	05053503          	ld	a0,80(a0)
    80001bfc:	04051a63          	bnez	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c00:	0404b503          	ld	a0,64(s1)
    80001c04:	08050a63          	beqz	a0,80001c98 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	8a0080e7          	jalr	-1888(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c10:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c14:	0404b503          	ld	a0,64(s1)
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	970080e7          	jalr	-1680(ra) # 80001588 <_Z5emptyP6slab_s>
    80001c20:	04051663          	bnez	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	a68080e7          	jalr	-1432(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c30:	0504b503          	ld	a0,80(s1)
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	92c080e7          	jalr	-1748(ra) # 80001560 <_Z4fullP6slab_s>
    80001c3c:	02050863          	beqz	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c40:	00048513          	mv	a0,s1
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	9f4080e7          	jalr	-1548(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c4c:	0200006f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	858080e7          	jalr	-1960(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c58:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c5c:	0504b503          	ld	a0,80(s1)
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	900080e7          	jalr	-1792(ra) # 80001560 <_Z4fullP6slab_s>
    80001c68:	02051063          	bnez	a0,80001c88 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c6c:	00090513          	mv	a0,s2
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	00013903          	ld	s2,0(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret
            putPartialToFull(cachep);
    80001c88:	00048513          	mv	a0,s1
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	9ac080e7          	jalr	-1620(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001c94:	fd9ff06f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001c98:	00048513          	mv	a0,s1
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	afc080e7          	jalr	-1284(ra) # 80001798 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001ca4:	0404b903          	ld	s2,64(s1)
    80001ca8:	04090863          	beqz	s2,80001cf8 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001cac:	00090513          	mv	a0,s2
    80001cb0:	fffff097          	auipc	ra,0xfffff
    80001cb4:	7f8080e7          	jalr	2040(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001cb8:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001cbc:	0404b503          	ld	a0,64(s1)
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	8c8080e7          	jalr	-1848(ra) # 80001588 <_Z5emptyP6slab_s>
    80001cc8:	fa0512e3          	bnez	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001ccc:	00048513          	mv	a0,s1
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	9c0080e7          	jalr	-1600(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001cd8:	0504b503          	ld	a0,80(s1)
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	884080e7          	jalr	-1916(ra) # 80001560 <_Z4fullP6slab_s>
    80001ce4:	f80504e3          	beqz	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001ce8:	00048513          	mv	a0,s1
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	94c080e7          	jalr	-1716(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cf4:	f79ff06f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001cf8:	0784a783          	lw	a5,120(s1)
    80001cfc:	0017e793          	ori	a5,a5,1
    80001d00:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d04:	f69ff06f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d08:	00050913          	mv	s2,a0
    80001d0c:	f61ff06f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d10:	fc010113          	addi	sp,sp,-64
    80001d14:	02113c23          	sd	ra,56(sp)
    80001d18:	02813823          	sd	s0,48(sp)
    80001d1c:	02913423          	sd	s1,40(sp)
    80001d20:	03213023          	sd	s2,32(sp)
    80001d24:	01313c23          	sd	s3,24(sp)
    80001d28:	01413823          	sd	s4,16(sp)
    80001d2c:	01513423          	sd	s5,8(sp)
    80001d30:	04010413          	addi	s0,sp,64
    80001d34:	00050993          	mv	s3,a0
    80001d38:	00058913          	mv	s2,a1
    80001d3c:	00060a13          	mv	s4,a2
    80001d40:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d44:	0000a517          	auipc	a0,0xa
    80001d48:	ccc53503          	ld	a0,-820(a0) # 8000ba10 <_ZL13slabAllocator>
    80001d4c:	07050513          	addi	a0,a0,112
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	e88080e7          	jalr	-376(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d58:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d5c:	02050863          	beqz	a0,80001d8c <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d60:	00090513          	mv	a0,s2
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	b20080e7          	jalr	-1248(ra) # 80001884 <_Z18getOptimalSlabSizem>
    80001d6c:	00050613          	mv	a2,a0
    80001d70:	000a8793          	mv	a5,s5
    80001d74:	000a0713          	mv	a4,s4
    80001d78:	00090693          	mv	a3,s2
    80001d7c:	00098593          	mv	a1,s3
    80001d80:	00048513          	mv	a0,s1
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	598080e7          	jalr	1432(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001d8c:	00048513          	mv	a0,s1
    80001d90:	03813083          	ld	ra,56(sp)
    80001d94:	03013403          	ld	s0,48(sp)
    80001d98:	02813483          	ld	s1,40(sp)
    80001d9c:	02013903          	ld	s2,32(sp)
    80001da0:	01813983          	ld	s3,24(sp)
    80001da4:	01013a03          	ld	s4,16(sp)
    80001da8:	00813a83          	ld	s5,8(sp)
    80001dac:	04010113          	addi	sp,sp,64
    80001db0:	00008067          	ret

0000000080001db4 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001db4:	08050463          	beqz	a0,80001e3c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x88>
{
    80001db8:	fd010113          	addi	sp,sp,-48
    80001dbc:	02113423          	sd	ra,40(sp)
    80001dc0:	02813023          	sd	s0,32(sp)
    80001dc4:	00913c23          	sd	s1,24(sp)
    80001dc8:	01213823          	sd	s2,16(sp)
    80001dcc:	01313423          	sd	s3,8(sp)
    80001dd0:	03010413          	addi	s0,sp,48
    80001dd4:	00050913          	mv	s2,a0
    80001dd8:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001ddc:	04058263          	beqz	a1,80001e20 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x6c>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	b0c080e7          	jalr	-1268(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
    80001de8:	00050993          	mv	s3,a0
    if(slab == nullptr) return;
    80001dec:	02050a63          	beqz	a0,80001e20 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x6c>

    //TODO
    //test it
    if(cachep->dtor != nullptr)
    80001df0:	07093783          	ld	a5,112(s2)
    80001df4:	00078663          	beqz	a5,80001e00 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
        cachep->dtor(objp);
    80001df8:	00048513          	mv	a0,s1
    80001dfc:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001e00:	06893783          	ld	a5,104(s2)
    80001e04:	00078663          	beqz	a5,80001e10 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x5c>
        cachep->ctor(objp);
    80001e08:	00048513          	mv	a0,s1
    80001e0c:	000780e7          	jalr	a5

    free_slab_object(slab, objp);
    80001e10:	00048593          	mv	a1,s1
    80001e14:	00098513          	mv	a0,s3
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	c80080e7          	jalr	-896(ra) # 80001a98 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e20:	02813083          	ld	ra,40(sp)
    80001e24:	02013403          	ld	s0,32(sp)
    80001e28:	01813483          	ld	s1,24(sp)
    80001e2c:	01013903          	ld	s2,16(sp)
    80001e30:	00813983          	ld	s3,8(sp)
    80001e34:	03010113          	addi	sp,sp,48
    80001e38:	00008067          	ret
    80001e3c:	00008067          	ret

0000000080001e40 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001e40:	12050c63          	beqz	a0,80001f78 <_Z15kmem_cache_infoP12kmem_cache_s+0x138>
{
    80001e44:	fe010113          	addi	sp,sp,-32
    80001e48:	00113c23          	sd	ra,24(sp)
    80001e4c:	00813823          	sd	s0,16(sp)
    80001e50:	00913423          	sd	s1,8(sp)
    80001e54:	01213023          	sd	s2,0(sp)
    80001e58:	02010413          	addi	s0,sp,32
    80001e5c:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e60:	00007517          	auipc	a0,0x7
    80001e64:	23050513          	addi	a0,a0,560 # 80009090 <CONSOLE_STATUS+0x80>
    80001e68:	00002097          	auipc	ra,0x2
    80001e6c:	824080e7          	jalr	-2012(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001e70:	00007517          	auipc	a0,0x7
    80001e74:	25850513          	addi	a0,a0,600 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e78:	00002097          	auipc	ra,0x2
    80001e7c:	814080e7          	jalr	-2028(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001e80:	00090513          	mv	a0,s2
    80001e84:	00002097          	auipc	ra,0x2
    80001e88:	808080e7          	jalr	-2040(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    80001e8c:	00007517          	auipc	a0,0x7
    80001e90:	76c50513          	addi	a0,a0,1900 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	7f8080e7          	jalr	2040(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001e9c:	00a00613          	li	a2,10
    80001ea0:	05893583          	ld	a1,88(s2)
    80001ea4:	00007517          	auipc	a0,0x7
    80001ea8:	23450513          	addi	a0,a0,564 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001eac:	00002097          	auipc	ra,0x2
    80001eb0:	8b8080e7          	jalr	-1864(ra) # 80003764 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001eb4:	00a00613          	li	a2,10
    80001eb8:	06093583          	ld	a1,96(s2)
    80001ebc:	00007517          	auipc	a0,0x7
    80001ec0:	23c50513          	addi	a0,a0,572 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001ec4:	00002097          	auipc	ra,0x2
    80001ec8:	8a0080e7          	jalr	-1888(ra) # 80003764 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001ecc:	00007517          	auipc	a0,0x7
    80001ed0:	24c50513          	addi	a0,a0,588 # 80009118 <CONSOLE_STATUS+0x108>
    80001ed4:	00001097          	auipc	ra,0x1
    80001ed8:	7b8080e7          	jalr	1976(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001edc:	00007517          	auipc	a0,0x7
    80001ee0:	25c50513          	addi	a0,a0,604 # 80009138 <CONSOLE_STATUS+0x128>
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	7a8080e7          	jalr	1960(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001eec:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001ef0:	00048c63          	beqz	s1,80001f08 <_Z15kmem_cache_infoP12kmem_cache_s+0xc8>
    {
        printSlabInfo(slab);
    80001ef4:	00048513          	mv	a0,s1
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	ad0080e7          	jalr	-1328(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f00:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f04:	fedff06f          	j	80001ef0 <_Z15kmem_cache_infoP12kmem_cache_s+0xb0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001f08:	00007517          	auipc	a0,0x7
    80001f0c:	24050513          	addi	a0,a0,576 # 80009148 <CONSOLE_STATUS+0x138>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	77c080e7          	jalr	1916(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001f18:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001f1c:	00048c63          	beqz	s1,80001f34 <_Z15kmem_cache_infoP12kmem_cache_s+0xf4>
    {
        printSlabInfo(slab);
    80001f20:	00048513          	mv	a0,s1
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	aa4080e7          	jalr	-1372(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f2c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f30:	fedff06f          	j	80001f1c <_Z15kmem_cache_infoP12kmem_cache_s+0xdc>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001f34:	00007517          	auipc	a0,0x7
    80001f38:	22450513          	addi	a0,a0,548 # 80009158 <CONSOLE_STATUS+0x148>
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	750080e7          	jalr	1872(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001f44:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f48:	00048c63          	beqz	s1,80001f60 <_Z15kmem_cache_infoP12kmem_cache_s+0x120>
    {
        printSlabInfo(slab);
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	a78080e7          	jalr	-1416(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f58:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f5c:	fedff06f          	j	80001f48 <_Z15kmem_cache_infoP12kmem_cache_s+0x108>
    }
}
    80001f60:	01813083          	ld	ra,24(sp)
    80001f64:	01013403          	ld	s0,16(sp)
    80001f68:	00813483          	ld	s1,8(sp)
    80001f6c:	00013903          	ld	s2,0(sp)
    80001f70:	02010113          	addi	sp,sp,32
    80001f74:	00008067          	ret
    80001f78:	00008067          	ret

0000000080001f7c <_Z22printSlabAllocatorInfov>:
{
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001f90:	00007517          	auipc	a0,0x7
    80001f94:	1d850513          	addi	a0,a0,472 # 80009168 <CONSOLE_STATUS+0x158>
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	6f4080e7          	jalr	1780(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001fa0:	0000a497          	auipc	s1,0xa
    80001fa4:	a7048493          	addi	s1,s1,-1424 # 8000ba10 <_ZL13slabAllocator>
    80001fa8:	0004b783          	ld	a5,0(s1)
    80001fac:	01000613          	li	a2,16
    80001fb0:	0007b583          	ld	a1,0(a5)
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	20450513          	addi	a0,a0,516 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	7a8080e7          	jalr	1960(ra) # 80003764 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001fc4:	01000613          	li	a2,16
    80001fc8:	0004b583          	ld	a1,0(s1)
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	20c50513          	addi	a0,a0,524 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80001fd4:	00001097          	auipc	ra,0x1
    80001fd8:	790080e7          	jalr	1936(ra) # 80003764 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001fdc:	00007517          	auipc	a0,0x7
    80001fe0:	21450513          	addi	a0,a0,532 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	6a8080e7          	jalr	1704(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001fec:	0004b503          	ld	a0,0(s1)
    80001ff0:	07050513          	addi	a0,a0,112
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	e4c080e7          	jalr	-436(ra) # 80001e40 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001ffc:	00007517          	auipc	a0,0x7
    80002000:	20c50513          	addi	a0,a0,524 # 80009208 <CONSOLE_STATUS+0x1f8>
    80002004:	00001097          	auipc	ra,0x1
    80002008:	688080e7          	jalr	1672(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000200c:	00000493          	li	s1,0
    80002010:	0100006f          	j	80002020 <_Z22printSlabAllocatorInfov+0xa4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80002014:	00000097          	auipc	ra,0x0
    80002018:	e2c080e7          	jalr	-468(ra) # 80001e40 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000201c:	00148493          	addi	s1,s1,1
    80002020:	00c00793          	li	a5,12
    80002024:	0297e063          	bltu	a5,s1,80002044 <_Z22printSlabAllocatorInfov+0xc8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002028:	00349793          	slli	a5,s1,0x3
    8000202c:	0000a717          	auipc	a4,0xa
    80002030:	9e473703          	ld	a4,-1564(a4) # 8000ba10 <_ZL13slabAllocator>
    80002034:	00f707b3          	add	a5,a4,a5
    80002038:	0087b503          	ld	a0,8(a5)
    8000203c:	fc051ce3          	bnez	a0,80002014 <_Z22printSlabAllocatorInfov+0x98>
    80002040:	fddff06f          	j	8000201c <_Z22printSlabAllocatorInfov+0xa0>
}
    80002044:	01813083          	ld	ra,24(sp)
    80002048:	01013403          	ld	s0,16(sp)
    8000204c:	00813483          	ld	s1,8(sp)
    80002050:	02010113          	addi	sp,sp,32
    80002054:	00008067          	ret

0000000080002058 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80002058:	fd010113          	addi	sp,sp,-48
    8000205c:	02113423          	sd	ra,40(sp)
    80002060:	02813023          	sd	s0,32(sp)
    80002064:	00913c23          	sd	s1,24(sp)
    80002068:	01213823          	sd	s2,16(sp)
    8000206c:	01313423          	sd	s3,8(sp)
    80002070:	03010413          	addi	s0,sp,48
    80002074:	00050993          	mv	s3,a0
    size_t level = getDeg2Ceil(size);
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	c80080e7          	jalr	-896(ra) # 80002cf8 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80002080:	00400793          	li	a5,4
    80002084:	00a7fa63          	bgeu	a5,a0,80002098 <_Z7kmallocm+0x40>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    80002088:	01100793          	li	a5,17
    8000208c:	00a7f863          	bgeu	a5,a0,8000209c <_Z7kmallocm+0x44>
        return nullptr;
    80002090:	00000913          	li	s2,0
    80002094:	0440006f          	j	800020d8 <_Z7kmallocm+0x80>
        level = CACHE_BUFFER_SMALL;
    80002098:	00500513          	li	a0,5
    size_t index = level - CACHE_BUFFER_SMALL;
    8000209c:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800020a0:	0000a917          	auipc	s2,0xa
    800020a4:	97093903          	ld	s2,-1680(s2) # 8000ba10 <_ZL13slabAllocator>
    800020a8:	00349793          	slli	a5,s1,0x3
    800020ac:	00f907b3          	add	a5,s2,a5
    800020b0:	0087b783          	ld	a5,8(a5)
    800020b4:	04078263          	beqz	a5,800020f8 <_Z7kmallocm+0xa0>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800020b8:	00349513          	slli	a0,s1,0x3
    800020bc:	0000a497          	auipc	s1,0xa
    800020c0:	9544b483          	ld	s1,-1708(s1) # 8000ba10 <_ZL13slabAllocator>
    800020c4:	00a48533          	add	a0,s1,a0
    800020c8:	00853503          	ld	a0,8(a0)
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	b0c080e7          	jalr	-1268(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    800020d4:	00050913          	mv	s2,a0
}
    800020d8:	00090513          	mv	a0,s2
    800020dc:	02813083          	ld	ra,40(sp)
    800020e0:	02013403          	ld	s0,32(sp)
    800020e4:	01813483          	ld	s1,24(sp)
    800020e8:	01013903          	ld	s2,16(sp)
    800020ec:	00813983          	ld	s3,8(sp)
    800020f0:	03010113          	addi	sp,sp,48
    800020f4:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    800020f8:	07090513          	addi	a0,s2,112
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	adc080e7          	jalr	-1316(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002104:	00349713          	slli	a4,s1,0x3
    80002108:	00e90933          	add	s2,s2,a4
    8000210c:	00a93423          	sd	a0,8(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    80002110:	0000a797          	auipc	a5,0xa
    80002114:	9007b783          	ld	a5,-1792(a5) # 8000ba10 <_ZL13slabAllocator>
    80002118:	00e787b3          	add	a5,a5,a4
    8000211c:	0087b903          	ld	s2,8(a5)
    80002120:	fa090ce3          	beqz	s2,800020d8 <_Z7kmallocm+0x80>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002124:	00098513          	mv	a0,s3
    80002128:	fffff097          	auipc	ra,0xfffff
    8000212c:	75c080e7          	jalr	1884(ra) # 80001884 <_Z18getOptimalSlabSizem>
    80002130:	00050613          	mv	a2,a0
    80002134:	00000793          	li	a5,0
    80002138:	00000713          	li	a4,0
    8000213c:	00098693          	mv	a3,s3
    80002140:	00007597          	auipc	a1,0x7
    80002144:	0e058593          	addi	a1,a1,224 # 80009220 <CONSOLE_STATUS+0x210>
    80002148:	00090513          	mv	a0,s2
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	1d0080e7          	jalr	464(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    80002154:	f65ff06f          	j	800020b8 <_Z7kmallocm+0x60>

0000000080002158 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002158:	08050263          	beqz	a0,800021dc <_Z5kfreePKv+0x84>
{
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	01213023          	sd	s2,0(sp)
    80002170:	02010413          	addi	s0,sp,32
    80002174:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002178:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    8000217c:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002180:	00c00793          	li	a5,12
    80002184:	0297e863          	bltu	a5,s1,800021b4 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80002188:	00349793          	slli	a5,s1,0x3
    8000218c:	0000a717          	auipc	a4,0xa
    80002190:	88473703          	ld	a4,-1916(a4) # 8000ba10 <_ZL13slabAllocator>
    80002194:	00f707b3          	add	a5,a4,a5
    80002198:	00090593          	mv	a1,s2
    8000219c:	0087b503          	ld	a0,8(a5)
    800021a0:	fffff097          	auipc	ra,0xfffff
    800021a4:	74c080e7          	jalr	1868(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    800021a8:	00051663          	bnez	a0,800021b4 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021ac:	00148493          	addi	s1,s1,1
    800021b0:	fd1ff06f          	j	80002180 <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    800021b4:	00050863          	beqz	a0,800021c4 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    800021b8:	00090593          	mv	a1,s2
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	8dc080e7          	jalr	-1828(ra) # 80001a98 <_Z16free_slab_objectP6slab_sPKv>
    }
}
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	00013903          	ld	s2,0(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret
    800021dc:	00008067          	ret

00000000800021e0 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    800021e0:	fe010113          	addi	sp,sp,-32
    800021e4:	00113c23          	sd	ra,24(sp)
    800021e8:	00813823          	sd	s0,16(sp)
    800021ec:	00913423          	sd	s1,8(sp)
    800021f0:	02010413          	addi	s0,sp,32
    800021f4:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    800021f8:	05053783          	ld	a5,80(a0)
    800021fc:	02078263          	beqz	a5,80002220 <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
    {
        cachep->errors|=DESTROY_ERROR;
    80002200:	0784a783          	lw	a5,120(s1)
    80002204:	0027e793          	ori	a5,a5,2
    80002208:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    8000220c:	01813083          	ld	ra,24(sp)
    80002210:	01013403          	ld	s0,16(sp)
    80002214:	00813483          	ld	s1,8(sp)
    80002218:	02010113          	addi	sp,sp,32
    8000221c:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    80002220:	04853783          	ld	a5,72(a0)
    80002224:	fc079ee3          	bnez	a5,80002200 <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(&cachep->slabs_empty);
    80002228:	04050513          	addi	a0,a0,64
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	060080e7          	jalr	96(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    80002234:	05048513          	addi	a0,s1,80
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	054080e7          	jalr	84(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    80002240:	04848513          	addi	a0,s1,72
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	048080e7          	jalr	72(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    8000224c:	00048593          	mv	a1,s1
    80002250:	00009517          	auipc	a0,0x9
    80002254:	7c053503          	ld	a0,1984(a0) # 8000ba10 <_ZL13slabAllocator>
    80002258:	07050513          	addi	a0,a0,112
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	b58080e7          	jalr	-1192(ra) # 80001db4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    80002264:	fa9ff06f          	j	8000220c <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

0000000080002268 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002268:	02050863          	beqz	a0,80002298 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    8000226c:	ff010113          	addi	sp,sp,-16
    80002270:	00113423          	sd	ra,8(sp)
    80002274:	00813023          	sd	s0,0(sp)
    80002278:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    8000227c:	04050513          	addi	a0,a0,64
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	00c080e7          	jalr	12(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret
        return 0;
    80002298:	00000513          	li	a0,0
}
    8000229c:	00008067          	ret

00000000800022a0 <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800022a0:	06050a63          	beqz	a0,80002314 <_Z16kmem_cache_errorP12kmem_cache_s+0x74>
{
    800022a4:	fe010113          	addi	sp,sp,-32
    800022a8:	00113c23          	sd	ra,24(sp)
    800022ac:	00813823          	sd	s0,16(sp)
    800022b0:	00913423          	sd	s1,8(sp)
    800022b4:	02010413          	addi	s0,sp,32
    800022b8:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    800022bc:	07852783          	lw	a5,120(a0)
    800022c0:	0017f793          	andi	a5,a5,1
    800022c4:	02079463          	bnez	a5,800022ec <_Z16kmem_cache_errorP12kmem_cache_s+0x4c>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    800022c8:	0784a783          	lw	a5,120(s1)
    800022cc:	0027f793          	andi	a5,a5,2
    800022d0:	02079863          	bnez	a5,80002300 <_Z16kmem_cache_errorP12kmem_cache_s+0x60>
        KConsole::trapPrintString("DESTROY ERROR");

    return cachep->errors;
    800022d4:	0784a503          	lw	a0,120(s1)
}
    800022d8:	01813083          	ld	ra,24(sp)
    800022dc:	01013403          	ld	s0,16(sp)
    800022e0:	00813483          	ld	s1,8(sp)
    800022e4:	02010113          	addi	sp,sp,32
    800022e8:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    800022ec:	00007517          	auipc	a0,0x7
    800022f0:	f4c50513          	addi	a0,a0,-180 # 80009238 <CONSOLE_STATUS+0x228>
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	398080e7          	jalr	920(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    800022fc:	fcdff06f          	j	800022c8 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    80002300:	00007517          	auipc	a0,0x7
    80002304:	f4850513          	addi	a0,a0,-184 # 80009248 <CONSOLE_STATUS+0x238>
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	384080e7          	jalr	900(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    80002310:	fc5ff06f          	j	800022d4 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
        return 0;
    80002314:	00000513          	li	a0,0
}
    80002318:	00008067          	ret

000000008000231c <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00813423          	sd	s0,8(sp)
    80002324:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002328:	03f50513          	addi	a0,a0,63
    8000232c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80002330:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80002334:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002338:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000233c:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80002340:	00813403          	ld	s0,8(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00813423          	sd	s0,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002358:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000235c:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80002360:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002364:	00050513          	mv	a0,a0

    return result;
}
    80002368:	0005051b          	sext.w	a0,a0
    8000236c:	00813403          	ld	s0,8(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002378:	fd010113          	addi	sp,sp,-48
    8000237c:	02113423          	sd	ra,40(sp)
    80002380:	02813023          	sd	s0,32(sp)
    80002384:	00913c23          	sd	s1,24(sp)
    80002388:	01213823          	sd	s2,16(sp)
    8000238c:	01313423          	sd	s3,8(sp)
    80002390:	03010413          	addi	s0,sp,48
    80002394:	00050493          	mv	s1,a0
    80002398:	00058913          	mv	s2,a1
    8000239c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800023a0:	00001537          	lui	a0,0x1
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	f78080e7          	jalr	-136(ra) # 8000231c <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800023ac:	04050263          	beqz	a0,800023f0 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800023b0:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800023b4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800023b8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800023bc:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800023c0:	01100793          	li	a5,17
    800023c4:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800023c8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023cc:	00050513          	mv	a0,a0

    return result;
    800023d0:	0005051b          	sext.w	a0,a0
}
    800023d4:	02813083          	ld	ra,40(sp)
    800023d8:	02013403          	ld	s0,32(sp)
    800023dc:	01813483          	ld	s1,24(sp)
    800023e0:	01013903          	ld	s2,16(sp)
    800023e4:	00813983          	ld	s3,8(sp)
    800023e8:	03010113          	addi	sp,sp,48
    800023ec:	00008067          	ret
        return -1;
    800023f0:	fff00513          	li	a0,-1
    800023f4:	fe1ff06f          	j	800023d4 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

00000000800023f8 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00813423          	sd	s0,8(sp)
    80002400:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002404:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002408:	00000073          	ecall
}
    8000240c:	00813403          	ld	s0,8(sp)
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret

0000000080002418 <_Z11thread_exitv>:

int thread_exit()
{
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00813423          	sd	s0,8(sp)
    80002420:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80002424:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80002428:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000242c:	00050513          	mv	a0,a0
    return result;
}
    80002430:	0005051b          	sext.w	a0,a0
    80002434:	00813403          	ld	s0,8(sp)
    80002438:	01010113          	addi	sp,sp,16
    8000243c:	00008067          	ret

0000000080002440 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00813423          	sd	s0,8(sp)
    80002448:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000244c:	02059593          	slli	a1,a1,0x20
    80002450:	0205d593          	srli	a1,a1,0x20
    80002454:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002458:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000245c:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80002460:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002464:	00050513          	mv	a0,a0
    return result;
}
    80002468:	0005051b          	sext.w	a0,a0
    8000246c:	00813403          	ld	s0,8(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002478:	ff010113          	addi	sp,sp,-16
    8000247c:	00813423          	sd	s0,8(sp)
    80002480:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002484:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80002488:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000248c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002490:	00050513          	mv	a0,a0
    return result;
}
    80002494:	0005051b          	sext.w	a0,a0
    80002498:	00813403          	ld	s0,8(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00813423          	sd	s0,8(sp)
    800024ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800024b0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800024b4:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800024b8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024bc:	00050513          	mv	a0,a0
    return result;
}
    800024c0:	0005051b          	sext.w	a0,a0
    800024c4:	00813403          	ld	s0,8(sp)
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret

00000000800024d0 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800024d0:	ff010113          	addi	sp,sp,-16
    800024d4:	00813423          	sd	s0,8(sp)
    800024d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800024dc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800024e0:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800024e4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024e8:	00050513          	mv	a0,a0
    return result;
}
    800024ec:	0005051b          	sext.w	a0,a0
    800024f0:	00813403          	ld	s0,8(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80002508:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000250c:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80002510:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002514:	00050513          	mv	a0,a0
    return result;
}
    80002518:	0005051b          	sext.w	a0,a0
    8000251c:	00813403          	ld	s0,8(sp)
    80002520:	01010113          	addi	sp,sp,16
    80002524:	00008067          	ret

0000000080002528 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80002528:	ff010113          	addi	sp,sp,-16
    8000252c:	00813423          	sd	s0,8(sp)
    80002530:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002534:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80002538:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000253c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002540:	00050513          	mv	a0,a0
    return result;
}
    80002544:	0005051b          	sext.w	a0,a0
    80002548:	00813403          	ld	s0,8(sp)
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret

0000000080002554 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80002554:	fd010113          	addi	sp,sp,-48
    80002558:	02113423          	sd	ra,40(sp)
    8000255c:	02813023          	sd	s0,32(sp)
    80002560:	00913c23          	sd	s1,24(sp)
    80002564:	01213823          	sd	s2,16(sp)
    80002568:	01313423          	sd	s3,8(sp)
    8000256c:	03010413          	addi	s0,sp,48
    80002570:	00050493          	mv	s1,a0
    80002574:	00058913          	mv	s2,a1
    80002578:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000257c:	00001537          	lui	a0,0x1
    80002580:	00000097          	auipc	ra,0x0
    80002584:	d9c080e7          	jalr	-612(ra) # 8000231c <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    80002588:	04050263          	beqz	a0,800025cc <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000258c:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80002590:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80002594:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002598:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000259c:	01400793          	li	a5,20
    800025a0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800025a4:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800025a8:	00050513          	mv	a0,a0
    return result;
    800025ac:	0005051b          	sext.w	a0,a0
}
    800025b0:	02813083          	ld	ra,40(sp)
    800025b4:	02013403          	ld	s0,32(sp)
    800025b8:	01813483          	ld	s1,24(sp)
    800025bc:	01013903          	ld	s2,16(sp)
    800025c0:	00813983          	ld	s3,8(sp)
    800025c4:	03010113          	addi	sp,sp,48
    800025c8:	00008067          	ret
        return -1;
    800025cc:	fff00513          	li	a0,-1
    800025d0:	fe1ff06f          	j	800025b0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800025d4 <_Z4getcv>:

char getc()
{
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800025e0:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800025e4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800025e8:	00050513          	mv	a0,a0
    return (char)result;
}
    800025ec:	0ff57513          	andi	a0,a0,255
    800025f0:	00813403          	ld	s0,8(sp)
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret

00000000800025fc <_Z4putcc>:

void putc(char c)
{
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00813423          	sd	s0,8(sp)
    80002604:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80002608:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000260c:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80002610:	00000073          	ecall
}
    80002614:	00813403          	ld	s0,8(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret

0000000080002620 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    8000262c:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80002630:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002634:	00050513          	mv	a0,a0
    return (char)result;
}
    80002638:	0ff57513          	andi	a0,a0,255
    8000263c:	00813403          	ld	s0,8(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813423          	sd	s0,8(sp)
    80002650:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002654:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80002658:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000265c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002660:	00050513          	mv	a0,a0
    return (char)result;
}
    80002664:	0ff57513          	andi	a0,a0,255
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80002684:	00000097          	auipc	ra,0x0
    80002688:	fc4080e7          	jalr	-60(ra) # 80002648 <_Z17thread_delete_pcbP7_thread>
    8000268c:	00813083          	ld	ra,8(sp)
    80002690:	00013403          	ld	s0,0(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret

000000008000269c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800026ac:	00002097          	auipc	ra,0x2
    800026b0:	db8080e7          	jalr	-584(ra) # 80004464 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800026b4:	00009797          	auipc	a5,0x9
    800026b8:	3647b783          	ld	a5,868(a5) # 8000ba18 <_ZN3PCB7runningE>
    800026bc:	0287b703          	ld	a4,40(a5)
    800026c0:	0307b503          	ld	a0,48(a5)
    800026c4:	000700e7          	jalr	a4

    thread_exit();
    800026c8:	00000097          	auipc	ra,0x0
    800026cc:	d50080e7          	jalr	-688(ra) # 80002418 <_Z11thread_exitv>
}
    800026d0:	00813083          	ld	ra,8(sp)
    800026d4:	00013403          	ld	s0,0(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret

00000000800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800026e0:	ff010113          	addi	sp,sp,-16
    800026e4:	00813423          	sd	s0,8(sp)
    800026e8:	01010413          	addi	s0,sp,16
    })
    800026ec:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    800026f0:	00e53c23          	sd	a4,24(a0)
    800026f4:	02053023          	sd	zero,32(a0)
    800026f8:	02b53423          	sd	a1,40(a0)
    800026fc:	02c53823          	sd	a2,48(a0)
    80002700:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002704:	000017b7          	lui	a5,0x1
    80002708:	00f686b3          	add	a3,a3,a5
    })
    8000270c:	04d53423          	sd	a3,72(a0)
    80002710:	00000797          	auipc	a5,0x0
    80002714:	f8c78793          	addi	a5,a5,-116 # 8000269c <_ZN3PCB6runnerEv>
    80002718:	04f53823          	sd	a5,80(a0)
    8000271c:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002720:	00053423          	sd	zero,8(a0)
}
    80002724:	00813403          	ld	s0,8(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <_ZN3PCB5startEv>:
{
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002740:	00001097          	auipc	ra,0x1
    80002744:	204080e7          	jalr	516(ra) # 80003944 <_ZN9Scheduler3putEP3PCB>
}
    80002748:	00813083          	ld	ra,8(sp)
    8000274c:	00013403          	ld	s0,0(sp)
    80002750:	01010113          	addi	sp,sp,16
    80002754:	00008067          	ret

0000000080002758 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002758:	fe010113          	addi	sp,sp,-32
    8000275c:	00113c23          	sd	ra,24(sp)
    80002760:	00813823          	sd	s0,16(sp)
    80002764:	00913423          	sd	s1,8(sp)
    80002768:	01213023          	sd	s2,0(sp)
    8000276c:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002770:	00009497          	auipc	s1,0x9
    80002774:	2a84b483          	ld	s1,680(s1) # 8000ba18 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002778:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    8000277c:	00100793          	li	a5,1
    80002780:	04f70a63          	beq	a4,a5,800027d4 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002784:	00001097          	auipc	ra,0x1
    80002788:	214080e7          	jalr	532(ra) # 80003998 <_ZN9Scheduler3getEv>
    8000278c:	00009917          	auipc	s2,0x9
    80002790:	28c90913          	addi	s2,s2,652 # 8000ba18 <_ZN3PCB7runningE>
    80002794:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002798:	00100793          	li	a5,1
    8000279c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800027a0:	00002097          	auipc	ra,0x2
    800027a4:	ddc080e7          	jalr	-548(ra) # 8000457c <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800027a8:	00093583          	ld	a1,0(s2)
    800027ac:	04858593          	addi	a1,a1,72
    800027b0:	04848513          	addi	a0,s1,72
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	a84080e7          	jalr	-1404(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800027bc:	01813083          	ld	ra,24(sp)
    800027c0:	01013403          	ld	s0,16(sp)
    800027c4:	00813483          	ld	s1,8(sp)
    800027c8:	00013903          	ld	s2,0(sp)
    800027cc:	02010113          	addi	sp,sp,32
    800027d0:	00008067          	ret
        Scheduler::put(old);
    800027d4:	00048513          	mv	a0,s1
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	16c080e7          	jalr	364(ra) # 80003944 <_ZN9Scheduler3putEP3PCB>
    800027e0:	fa5ff06f          	j	80002784 <_ZN3PCB8dispatchEv+0x2c>

00000000800027e4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00113423          	sd	ra,8(sp)
    800027ec:	00813023          	sd	s0,0(sp)
    800027f0:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    800027f4:	00009797          	auipc	a5,0x9
    800027f8:	1c47b783          	ld	a5,452(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x90>
    800027fc:	0007b503          	ld	a0,0(a5)
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	3d8080e7          	jalr	984(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002808:	00813083          	ld	ra,8(sp)
    8000280c:	00013403          	ld	s0,0(sp)
    80002810:	01010113          	addi	sp,sp,16
    80002814:	00008067          	ret

0000000080002818 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002818:	ff010113          	addi	sp,sp,-16
    8000281c:	00113423          	sd	ra,8(sp)
    80002820:	00813023          	sd	s0,0(sp)
    80002824:	01010413          	addi	s0,sp,16
    80002828:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    8000282c:	00009797          	auipc	a5,0x9
    80002830:	18c7b783          	ld	a5,396(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x90>
    80002834:	0007b503          	ld	a0,0(a5)
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	57c080e7          	jalr	1404(ra) # 80001db4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002840:	00813083          	ld	ra,8(sp)
    80002844:	00013403          	ld	s0,0(sp)
    80002848:	01010113          	addi	sp,sp,16
    8000284c:	00008067          	ret

0000000080002850 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00113423          	sd	ra,8(sp)
    80002858:	00813023          	sd	s0,0(sp)
    8000285c:	01010413          	addi	s0,sp,16
{
    //MemoryAllocator::kfree(beginSP);
    kfree(beginSP);
    80002860:	03853503          	ld	a0,56(a0)
    80002864:	00000097          	auipc	ra,0x0
    80002868:	8f4080e7          	jalr	-1804(ra) # 80002158 <_Z5kfreePKv>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000287c:	fd010113          	addi	sp,sp,-48
    80002880:	02113423          	sd	ra,40(sp)
    80002884:	02813023          	sd	s0,32(sp)
    80002888:	00913c23          	sd	s1,24(sp)
    8000288c:	01213823          	sd	s2,16(sp)
    80002890:	01313423          	sd	s3,8(sp)
    80002894:	01413023          	sd	s4,0(sp)
    80002898:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000289c:	06000513          	li	a0,96
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	f44080e7          	jalr	-188(ra) # 800027e4 <_ZN3PCBnwEm>
    800028a8:	00050493          	mv	s1,a0
    800028ac:	00000713          	li	a4,0
    800028b0:	00000693          	li	a3,0
    800028b4:	00000613          	li	a2,0
    800028b8:	00000593          	li	a1,0
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	e24080e7          	jalr	-476(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800028c4:	00100793          	li	a5,1
    800028c8:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800028cc:	00009917          	auipc	s2,0x9
    800028d0:	14c90913          	addi	s2,s2,332 # 8000ba18 <_ZN3PCB7runningE>
    800028d4:	00993023          	sd	s1,0(s2)
    800028d8:	00100a13          	li	s4,1
    800028dc:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    800028e0:	00001537          	lui	a0,0x1
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	774080e7          	jalr	1908(ra) # 80002058 <_Z7kmallocm>
    800028ec:	00050993          	mv	s3,a0
                              //MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800028f0:	06000513          	li	a0,96
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	ef0080e7          	jalr	-272(ra) # 800027e4 <_ZN3PCBnwEm>
    800028fc:	00050493          	mv	s1,a0
    80002900:	00200713          	li	a4,2
    80002904:	00098693          	mv	a3,s3
    80002908:	00000613          	li	a2,0
    8000290c:	00009597          	auipc	a1,0x9
    80002910:	0745b583          	ld	a1,116(a1) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002914:	00000097          	auipc	ra,0x0
    80002918:	dcc080e7          	jalr	-564(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    8000291c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002920:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002924:	00893503          	ld	a0,8(s2)
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	e08080e7          	jalr	-504(ra) # 80002730 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
                           kmalloc(DEFAULT_STACK_SIZE),
    80002930:	00001537          	lui	a0,0x1
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	724080e7          	jalr	1828(ra) # 80002058 <_Z7kmallocm>
    8000293c:	00050993          	mv	s3,a0
                           //MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                           DEFAULT_TIME_SLICE);
    80002940:	06000513          	li	a0,96
    80002944:	00000097          	auipc	ra,0x0
    80002948:	ea0080e7          	jalr	-352(ra) # 800027e4 <_ZN3PCBnwEm>
    8000294c:	00050493          	mv	s1,a0
    80002950:	00200713          	li	a4,2
    80002954:	00098693          	mv	a3,s3
    80002958:	00000613          	li	a2,0
    8000295c:	00009597          	auipc	a1,0x9
    80002960:	0545b583          	ld	a1,84(a1) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002964:	00000097          	auipc	ra,0x0
    80002968:	d7c080e7          	jalr	-644(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
    8000296c:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002970:	00048513          	mv	a0,s1
    80002974:	00000097          	auipc	ra,0x0
    80002978:	dbc080e7          	jalr	-580(ra) # 80002730 <_ZN3PCB5startEv>
}
    8000297c:	02813083          	ld	ra,40(sp)
    80002980:	02013403          	ld	s0,32(sp)
    80002984:	01813483          	ld	s1,24(sp)
    80002988:	01013903          	ld	s2,16(sp)
    8000298c:	00813983          	ld	s3,8(sp)
    80002990:	00013a03          	ld	s4,0(sp)
    80002994:	03010113          	addi	sp,sp,48
    80002998:	00008067          	ret

000000008000299c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00813423          	sd	s0,8(sp)
    800029a4:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800029a8:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800029ac:	ffd50513          	addi	a0,a0,-3
}
    800029b0:	00153513          	seqz	a0,a0
    800029b4:	00813403          	ld	s0,8(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800029c0:	ff010113          	addi	sp,sp,-16
    800029c4:	00113423          	sd	ra,8(sp)
    800029c8:	00813023          	sd	s0,0(sp)
    800029cc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029d0:	00009797          	auipc	a5,0x9
    800029d4:	04878793          	addi	a5,a5,72 # 8000ba18 <_ZN3PCB7runningE>
    800029d8:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800029dc:	0007b783          	ld	a5,0(a5)
    800029e0:	00300713          	li	a4,3
    800029e4:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	d70080e7          	jalr	-656(ra) # 80002758 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800029f0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029f4:	00002097          	auipc	ra,0x2
    800029f8:	b50080e7          	jalr	-1200(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029fc:	00813083          	ld	ra,8(sp)
    80002a00:	00013403          	ld	s0,0(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00113423          	sd	ra,8(sp)
    80002a14:	00813023          	sd	s0,0(sp)
    80002a18:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002a1c:	00009797          	auipc	a5,0x9
    80002a20:	0007ba23          	sd	zero,20(a5) # 8000ba30 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	d34080e7          	jalr	-716(ra) # 80002758 <_ZN3PCB8dispatchEv>
}
    80002a2c:	00813083          	ld	ra,8(sp)
    80002a30:	00013403          	ld	s0,0(sp)
    80002a34:	01010113          	addi	sp,sp,16
    80002a38:	00008067          	ret

0000000080002a3c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002a3c:	ff010113          	addi	sp,sp,-16
    80002a40:	00113423          	sd	ra,8(sp)
    80002a44:	00813023          	sd	s0,0(sp)
    80002a48:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002a4c:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002a50:	00009717          	auipc	a4,0x9
    80002a54:	fc870713          	addi	a4,a4,-56 # 8000ba18 <_ZN3PCB7runningE>
    80002a58:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002a5c:	00073703          	ld	a4,0(a4)
    80002a60:	00009697          	auipc	a3,0x9
    80002a64:	f186b683          	ld	a3,-232(a3) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a68:	0006b683          	ld	a3,0(a3)
    80002a6c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a70:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002a74:	00001097          	auipc	ra,0x1
    80002a78:	d54080e7          	jalr	-684(ra) # 800037c8 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	cdc080e7          	jalr	-804(ra) # 80002758 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002a84:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002a88:	00002097          	auipc	ra,0x2
    80002a8c:	abc080e7          	jalr	-1348(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a90:	00813083          	ld	ra,8(sp)
    80002a94:	00013403          	ld	s0,0(sp)
    80002a98:	01010113          	addi	sp,sp,16
    80002a9c:	00008067          	ret

0000000080002aa0 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002aa0:	fd010113          	addi	sp,sp,-48
    80002aa4:	02113423          	sd	ra,40(sp)
    80002aa8:	02813023          	sd	s0,32(sp)
    80002aac:	00913c23          	sd	s1,24(sp)
    80002ab0:	01213823          	sd	s2,16(sp)
    80002ab4:	01313423          	sd	s3,8(sp)
    80002ab8:	01413023          	sd	s4,0(sp)
    80002abc:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002ac0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002ac4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002ac8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002acc:	06000513          	li	a0,96
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	d14080e7          	jalr	-748(ra) # 800027e4 <_ZN3PCBnwEm>
    80002ad8:	00050493          	mv	s1,a0
    80002adc:	00200713          	li	a4,2
    80002ae0:	00009697          	auipc	a3,0x9
    80002ae4:	f586b683          	ld	a3,-168(a3) # 8000ba38 <_ZN3PCB10savedRegA4E>
    80002ae8:	000a0613          	mv	a2,s4
    80002aec:	00098593          	mv	a1,s3
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	bf0080e7          	jalr	-1040(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002af8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002afc:	02048e63          	beqz	s1,80002b38 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002b00:	00048513          	mv	a0,s1
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	c2c080e7          	jalr	-980(ra) # 80002730 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b0c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002b10:	00002097          	auipc	ra,0x2
    80002b14:	a34080e7          	jalr	-1484(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b18:	02813083          	ld	ra,40(sp)
    80002b1c:	02013403          	ld	s0,32(sp)
    80002b20:	01813483          	ld	s1,24(sp)
    80002b24:	01013903          	ld	s2,16(sp)
    80002b28:	00813983          	ld	s3,8(sp)
    80002b2c:	00013a03          	ld	s4,0(sp)
    80002b30:	03010113          	addi	sp,sp,48
    80002b34:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b38:	fff00513          	li	a0,-1
    80002b3c:	fd5ff06f          	j	80002b10 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002b40 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00113423          	sd	ra,8(sp)
    80002b48:	00813023          	sd	s0,0(sp)
    80002b4c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002b50:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002b54:	02050463          	beqz	a0,80002b7c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	bd8080e7          	jalr	-1064(ra) # 80002730 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b60:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002b64:	00002097          	auipc	ra,0x2
    80002b68:	9e0080e7          	jalr	-1568(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b6c:	00813083          	ld	ra,8(sp)
    80002b70:	00013403          	ld	s0,0(sp)
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b7c:	fff00513          	li	a0,-1
    80002b80:	fe5ff06f          	j	80002b64 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002b84 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002b84:	fd010113          	addi	sp,sp,-48
    80002b88:	02113423          	sd	ra,40(sp)
    80002b8c:	02813023          	sd	s0,32(sp)
    80002b90:	00913c23          	sd	s1,24(sp)
    80002b94:	01213823          	sd	s2,16(sp)
    80002b98:	01313423          	sd	s3,8(sp)
    80002b9c:	01413023          	sd	s4,0(sp)
    80002ba0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002ba4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002ba8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002bac:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002bb0:	06000513          	li	a0,96
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	c30080e7          	jalr	-976(ra) # 800027e4 <_ZN3PCBnwEm>
    80002bbc:	00050493          	mv	s1,a0
    80002bc0:	00200713          	li	a4,2
    80002bc4:	00009697          	auipc	a3,0x9
    80002bc8:	e746b683          	ld	a3,-396(a3) # 8000ba38 <_ZN3PCB10savedRegA4E>
    80002bcc:	000a0613          	mv	a2,s4
    80002bd0:	00098593          	mv	a1,s3
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	b0c080e7          	jalr	-1268(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002bdc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002be0:	02048863          	beqz	s1,80002c10 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002be4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002be8:	00002097          	auipc	ra,0x2
    80002bec:	95c080e7          	jalr	-1700(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bf0:	02813083          	ld	ra,40(sp)
    80002bf4:	02013403          	ld	s0,32(sp)
    80002bf8:	01813483          	ld	s1,24(sp)
    80002bfc:	01013903          	ld	s2,16(sp)
    80002c00:	00813983          	ld	s3,8(sp)
    80002c04:	00013a03          	ld	s4,0(sp)
    80002c08:	03010113          	addi	sp,sp,48
    80002c0c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c10:	fff00513          	li	a0,-1
    80002c14:	fd5ff06f          	j	80002be8 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002c18 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c2c:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002c30:	02048e63          	beqz	s1,80002c6c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002c34:	00048513          	mv	a0,s1
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	c18080e7          	jalr	-1000(ra) # 80002850 <_ZN3PCBD1Ev>
    80002c40:	00048513          	mv	a0,s1
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	bd4080e7          	jalr	-1068(ra) # 80002818 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002c4c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002c50:	00002097          	auipc	ra,0x2
    80002c54:	8f4080e7          	jalr	-1804(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c58:	01813083          	ld	ra,24(sp)
    80002c5c:	01013403          	ld	s0,16(sp)
    80002c60:	00813483          	ld	s1,8(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002c6c:	00100513          	li	a0,1
    80002c70:	fe1ff06f          	j	80002c50 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002c74 <_Z12getBlockAddrm>:
    size_t level = getDeg2Ceil(numOfBlocks);
    addBlocks(buddy, addr, level); //adds free blocks
}

size_t getBlockAddr(size_t addr)
{
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00813423          	sd	s0,8(sp)
    80002c7c:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002c80:	fffff7b7          	lui	a5,0xfffff
    80002c84:	00f57533          	and	a0,a0,a5
    80002c88:	00813403          	ld	s0,8(sp)
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00008067          	ret

0000000080002c94 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002c94:	ff010113          	addi	sp,sp,-16
    80002c98:	00113423          	sd	ra,8(sp)
    80002c9c:	00813023          	sd	s0,0(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	fd0080e7          	jalr	-48(ra) # 80002c74 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002cac:	000017b7          	lui	a5,0x1
    80002cb0:	00f50533          	add	a0,a0,a5
    80002cb4:	00813083          	ld	ra,8(sp)
    80002cb8:	00013403          	ld	s0,0(sp)
    80002cbc:	01010113          	addi	sp,sp,16
    80002cc0:	00008067          	ret

0000000080002cc4 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002cd0:	00000713          	li	a4,0
    size_t x = 1;
    80002cd4:	00100793          	li	a5,1
    while(x <= num)
    80002cd8:	00f56863          	bltu	a0,a5,80002ce8 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002cdc:	00170713          	addi	a4,a4,1
        x<<=1;
    80002ce0:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002ce4:	ff5ff06f          	j	80002cd8 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002ce8:	fff70513          	addi	a0,a4,-1
    80002cec:	00813403          	ld	s0,8(sp)
    80002cf0:	01010113          	addi	sp,sp,16
    80002cf4:	00008067          	ret

0000000080002cf8 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002cf8:	ff010113          	addi	sp,sp,-16
    80002cfc:	00813423          	sd	s0,8(sp)
    80002d00:	01010413          	addi	s0,sp,16
    80002d04:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002d08:	00000513          	li	a0,0
    size_t x = 1;
    80002d0c:	00100793          	li	a5,1
    while(x < num)
    80002d10:	00e7f863          	bgeu	a5,a4,80002d20 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002d14:	00150513          	addi	a0,a0,1
        x<<=1;
    80002d18:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002d1c:	ff5ff06f          	j	80002d10 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002d20:	00813403          	ld	s0,8(sp)
    80002d24:	01010113          	addi	sp,sp,16
    80002d28:	00008067          	ret

0000000080002d2c <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d2c:	ff010113          	addi	sp,sp,-16
    80002d30:	00813423          	sd	s0,8(sp)
    80002d34:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002d38:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002d3c:	00260793          	addi	a5,a2,2
    80002d40:	00479793          	slli	a5,a5,0x4
    80002d44:	00f507b3          	add	a5,a0,a5
    80002d48:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002d4c:	02078463          	beqz	a5,80002d74 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002d50:	00260613          	addi	a2,a2,2
    80002d54:	00461613          	slli	a2,a2,0x4
    80002d58:	00c50633          	add	a2,a0,a2
    80002d5c:	00863783          	ld	a5,8(a2)
    80002d60:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002d64:	00b63423          	sd	a1,8(a2)
    }
}
    80002d68:	00813403          	ld	s0,8(sp)
    80002d6c:	01010113          	addi	sp,sp,16
    80002d70:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002d74:	00260613          	addi	a2,a2,2
    80002d78:	00461613          	slli	a2,a2,0x4
    80002d7c:	00c50633          	add	a2,a0,a2
    80002d80:	00b63423          	sd	a1,8(a2)
    80002d84:	00b63023          	sd	a1,0(a2)
    80002d88:	fe1ff06f          	j	80002d68 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002d8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d8c:	ff010113          	addi	sp,sp,-16
    80002d90:	00813423          	sd	s0,8(sp)
    80002d94:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002d98:	000017b7          	lui	a5,0x1
    80002d9c:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002da0:	00853783          	ld	a5,8(a0)
    80002da4:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002da8:	00f677b3          	and	a5,a2,a5
    80002dac:	00078a63          	beqz	a5,80002dc0 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002db0:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002db4:	00813403          	ld	s0,8(sp)
    80002db8:	01010113          	addi	sp,sp,16
    80002dbc:	00008067          	ret
        return (size_t)addr + diff;
    80002dc0:	00c58533          	add	a0,a1,a2
    80002dc4:	ff1ff06f          	j	80002db4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002dc8 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002dc8:	fd010113          	addi	sp,sp,-48
    80002dcc:	02113423          	sd	ra,40(sp)
    80002dd0:	02813023          	sd	s0,32(sp)
    80002dd4:	00913c23          	sd	s1,24(sp)
    80002dd8:	01213823          	sd	s2,16(sp)
    80002ddc:	01313423          	sd	s3,8(sp)
    80002de0:	01413023          	sd	s4,0(sp)
    80002de4:	03010413          	addi	s0,sp,48
    80002de8:	00050913          	mv	s2,a0
    80002dec:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002df0:	06070a63          	beqz	a4,80002e64 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002df4:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002df8:	04c68663          	beq	a3,a2,80002e44 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002dfc:	fff68493          	addi	s1,a3,-1
    80002e00:	00048613          	mv	a2,s1
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	f88080e7          	jalr	-120(ra) # 80002d8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002e0c:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002e10:	00000713          	li	a4,0
    80002e14:	00048693          	mv	a3,s1
    80002e18:	00098613          	mv	a2,s3
    80002e1c:	00090513          	mv	a0,s2
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	fa8080e7          	jalr	-88(ra) # 80002dc8 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002e28:	00100713          	li	a4,1
    80002e2c:	00048693          	mv	a3,s1
    80002e30:	00098613          	mv	a2,s3
    80002e34:	000a0593          	mv	a1,s4
    80002e38:	00090513          	mv	a0,s2
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	f8c080e7          	jalr	-116(ra) # 80002dc8 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002e44:	02813083          	ld	ra,40(sp)
    80002e48:	02013403          	ld	s0,32(sp)
    80002e4c:	01813483          	ld	s1,24(sp)
    80002e50:	01013903          	ld	s2,16(sp)
    80002e54:	00813983          	ld	s3,8(sp)
    80002e58:	00013a03          	ld	s4,0(sp)
    80002e5c:	03010113          	addi	sp,sp,48
    80002e60:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002e64:	00068613          	mv	a2,a3
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	ec4080e7          	jalr	-316(ra) # 80002d2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002e70:	fd5ff06f          	j	80002e44 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002e74 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002e74:	fe010113          	addi	sp,sp,-32
    80002e78:	00113c23          	sd	ra,24(sp)
    80002e7c:	00813823          	sd	s0,16(sp)
    80002e80:	00913423          	sd	s1,8(sp)
    80002e84:	01213023          	sd	s2,0(sp)
    80002e88:	02010413          	addi	s0,sp,32
    80002e8c:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e90:	00058513          	mv	a0,a1
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	e64080e7          	jalr	-412(ra) # 80002cf8 <_Z11getDeg2Ceilm>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002e9c:	00050693          	mv	a3,a0
    80002ea0:	0184b783          	ld	a5,24(s1)
    80002ea4:	06d7e463          	bltu	a5,a3,80002f0c <_Z11buddy_allocP14buddyAllocatorm+0x98>
        if(buddy->bucket[i].first != nullptr)
    80002ea8:	00268793          	addi	a5,a3,2
    80002eac:	00479793          	slli	a5,a5,0x4
    80002eb0:	00f487b3          	add	a5,s1,a5
    80002eb4:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002eb8:	00091663          	bnez	s2,80002ec4 <_Z11buddy_allocP14buddyAllocatorm+0x50>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ebc:	00168693          	addi	a3,a3,1
    80002ec0:	fe1ff06f          	j	80002ea0 <_Z11buddy_allocP14buddyAllocatorm+0x2c>
            buddy->bucket[i].first = ret->next;
    80002ec4:	00093703          	ld	a4,0(s2)
    80002ec8:	00268793          	addi	a5,a3,2
    80002ecc:	00479793          	slli	a5,a5,0x4
    80002ed0:	00f487b3          	add	a5,s1,a5
    80002ed4:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002ed8:	02070063          	beqz	a4,80002ef8 <_Z11buddy_allocP14buddyAllocatorm+0x84>
            split(buddy, (void*)ret, level, i, true);
    80002edc:	00100713          	li	a4,1
    80002ee0:	00050613          	mv	a2,a0
    80002ee4:	00090593          	mv	a1,s2
    80002ee8:	00048513          	mv	a0,s1
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	edc080e7          	jalr	-292(ra) # 80002dc8 <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80002ef4:	01c0006f          	j	80002f10 <_Z11buddy_allocP14buddyAllocatorm+0x9c>
                buddy->bucket[i].last = nullptr;
    80002ef8:	00268793          	addi	a5,a3,2
    80002efc:	00479793          	slli	a5,a5,0x4
    80002f00:	00f487b3          	add	a5,s1,a5
    80002f04:	0007b423          	sd	zero,8(a5)
    80002f08:	fd5ff06f          	j	80002edc <_Z11buddy_allocP14buddyAllocatorm+0x68>
    return nullptr;
    80002f0c:	00000913          	li	s2,0
}
    80002f10:	00090513          	mv	a0,s2
    80002f14:	01813083          	ld	ra,24(sp)
    80002f18:	01013403          	ld	s0,16(sp)
    80002f1c:	00813483          	ld	s1,8(sp)
    80002f20:	00013903          	ld	s2,0(sp)
    80002f24:	02010113          	addi	sp,sp,32
    80002f28:	00008067          	ret

0000000080002f2c <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002f2c:	fd010113          	addi	sp,sp,-48
    80002f30:	02113423          	sd	ra,40(sp)
    80002f34:	02813023          	sd	s0,32(sp)
    80002f38:	00913c23          	sd	s1,24(sp)
    80002f3c:	01213823          	sd	s2,16(sp)
    80002f40:	01313423          	sd	s3,8(sp)
    80002f44:	03010413          	addi	s0,sp,48
    80002f48:	00050493          	mv	s1,a0
    80002f4c:	00058993          	mv	s3,a1
    80002f50:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002f54:	01853783          	ld	a5,24(a0)
    80002f58:	02c78a63          	beq	a5,a2,80002f8c <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	e30080e7          	jalr	-464(ra) # 80002d8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002f64:	00290793          	addi	a5,s2,2
    80002f68:	00479793          	slli	a5,a5,0x4
    80002f6c:	00f487b3          	add	a5,s1,a5
    80002f70:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002f74:	00000713          	li	a4,0
    while(curr != nullptr)
    80002f78:	0a078e63          	beqz	a5,80003034 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002f7c:	00a78e63          	beq	a5,a0,80002f98 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002f80:	00078713          	mv	a4,a5
        curr = curr->next;
    80002f84:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002f88:	ff1ff06f          	j	80002f78 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002f8c:	00000097          	auipc	ra,0x0
    80002f90:	da0080e7          	jalr	-608(ra) # 80002d2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002f94:	0b40006f          	j	80003048 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002f98:	04070863          	beqz	a4,80002fe8 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002f9c:	0007b683          	ld	a3,0(a5)
    80002fa0:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002fa4:	00290693          	addi	a3,s2,2
    80002fa8:	00469693          	slli	a3,a3,0x4
    80002fac:	00d486b3          	add	a3,s1,a3
    80002fb0:	0086b683          	ld	a3,8(a3)
    80002fb4:	02f68063          	beq	a3,a5,80002fd4 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002fb8:	06a9f263          	bgeu	s3,a0,8000301c <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002fbc:	00190613          	addi	a2,s2,1
    80002fc0:	00098593          	mv	a1,s3
    80002fc4:	00048513          	mv	a0,s1
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	f64080e7          	jalr	-156(ra) # 80002f2c <_Z9addBlocksP14buddyAllocatorPvm>
    80002fd0:	0780006f          	j	80003048 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002fd4:	00290793          	addi	a5,s2,2
    80002fd8:	00479793          	slli	a5,a5,0x4
    80002fdc:	00f487b3          	add	a5,s1,a5
    80002fe0:	00e7b423          	sd	a4,8(a5)
    80002fe4:	fd5ff06f          	j	80002fb8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002fe8:	0007b703          	ld	a4,0(a5)
    80002fec:	00070c63          	beqz	a4,80003004 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002ff0:	00290793          	addi	a5,s2,2
    80002ff4:	00479793          	slli	a5,a5,0x4
    80002ff8:	00f487b3          	add	a5,s1,a5
    80002ffc:	00e7b023          	sd	a4,0(a5)
    80003000:	fb9ff06f          	j	80002fb8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80003004:	00290793          	addi	a5,s2,2
    80003008:	00479793          	slli	a5,a5,0x4
    8000300c:	00f487b3          	add	a5,s1,a5
    80003010:	0007b423          	sd	zero,8(a5)
    80003014:	0007b023          	sd	zero,0(a5)
    80003018:	fa1ff06f          	j	80002fb8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    8000301c:	00190613          	addi	a2,s2,1
    80003020:	00050593          	mv	a1,a0
    80003024:	00048513          	mv	a0,s1
    80003028:	00000097          	auipc	ra,0x0
    8000302c:	f04080e7          	jalr	-252(ra) # 80002f2c <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80003030:	0180006f          	j	80003048 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80003034:	00090613          	mv	a2,s2
    80003038:	00098593          	mv	a1,s3
    8000303c:	00048513          	mv	a0,s1
    80003040:	00000097          	auipc	ra,0x0
    80003044:	cec080e7          	jalr	-788(ra) # 80002d2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80003048:	02813083          	ld	ra,40(sp)
    8000304c:	02013403          	ld	s0,32(sp)
    80003050:	01813483          	ld	s1,24(sp)
    80003054:	01013903          	ld	s2,16(sp)
    80003058:	00813983          	ld	s3,8(sp)
    8000305c:	03010113          	addi	sp,sp,48
    80003060:	00008067          	ret

0000000080003064 <_Z10buddy_initPvm>:
{
    80003064:	fd010113          	addi	sp,sp,-48
    80003068:	02113423          	sd	ra,40(sp)
    8000306c:	02813023          	sd	s0,32(sp)
    80003070:	00913c23          	sd	s1,24(sp)
    80003074:	01213823          	sd	s2,16(sp)
    80003078:	01313423          	sd	s3,8(sp)
    8000307c:	03010413          	addi	s0,sp,48
    80003080:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80003084:	00050493          	mv	s1,a0
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	bec080e7          	jalr	-1044(ra) # 80002c74 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80003090:	00a48a63          	beq	s1,a0,800030a4 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80003094:	00000097          	auipc	ra,0x0
    80003098:	c00080e7          	jalr	-1024(ra) # 80002c94 <_Z16getNextBlockAddrm>
    8000309c:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    800030a0:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    800030a4:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    800030a8:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    800030ac:	00048513          	mv	a0,s1
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	be4080e7          	jalr	-1052(ra) # 80002c94 <_Z16getNextBlockAddrm>
    800030b8:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    800030bc:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    800030c0:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    800030c4:	00098513          	mv	a0,s3
    800030c8:	00000097          	auipc	ra,0x0
    800030cc:	bfc080e7          	jalr	-1028(ra) # 80002cc4 <_Z12getDeg2Floorm>
    800030d0:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030d4:	00000713          	li	a4,0
    800030d8:	02e56063          	bltu	a0,a4,800030f8 <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    800030dc:	00270793          	addi	a5,a4,2
    800030e0:	00479793          	slli	a5,a5,0x4
    800030e4:	00f907b3          	add	a5,s2,a5
    800030e8:	0007b423          	sd	zero,8(a5)
    800030ec:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030f0:	00170713          	addi	a4,a4,1
    800030f4:	fe5ff06f          	j	800030d8 <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    800030f8:	00000493          	li	s1,0
    800030fc:	0334f463          	bgeu	s1,s3,80003124 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80003100:	00893583          	ld	a1,8(s2)
    80003104:	00c49793          	slli	a5,s1,0xc
    80003108:	00000613          	li	a2,0
    8000310c:	00f585b3          	add	a1,a1,a5
    80003110:	00090513          	mv	a0,s2
    80003114:	00000097          	auipc	ra,0x0
    80003118:	e18080e7          	jalr	-488(ra) # 80002f2c <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    8000311c:	00148493          	addi	s1,s1,1
    80003120:	fddff06f          	j	800030fc <_Z10buddy_initPvm+0x98>
}
    80003124:	00090513          	mv	a0,s2
    80003128:	02813083          	ld	ra,40(sp)
    8000312c:	02013403          	ld	s0,32(sp)
    80003130:	01813483          	ld	s1,24(sp)
    80003134:	01013903          	ld	s2,16(sp)
    80003138:	00813983          	ld	s3,8(sp)
    8000313c:	03010113          	addi	sp,sp,48
    80003140:	00008067          	ret

0000000080003144 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80003144:	fe010113          	addi	sp,sp,-32
    80003148:	00113c23          	sd	ra,24(sp)
    8000314c:	00813823          	sd	s0,16(sp)
    80003150:	00913423          	sd	s1,8(sp)
    80003154:	01213023          	sd	s2,0(sp)
    80003158:	02010413          	addi	s0,sp,32
    8000315c:	00050493          	mv	s1,a0
    80003160:	00058913          	mv	s2,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80003164:	00060513          	mv	a0,a2
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	b90080e7          	jalr	-1136(ra) # 80002cf8 <_Z11getDeg2Ceilm>
    80003170:	00050613          	mv	a2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80003174:	00090593          	mv	a1,s2
    80003178:	00048513          	mv	a0,s1
    8000317c:	00000097          	auipc	ra,0x0
    80003180:	db0080e7          	jalr	-592(ra) # 80002f2c <_Z9addBlocksP14buddyAllocatorPvm>
}
    80003184:	01813083          	ld	ra,24(sp)
    80003188:	01013403          	ld	s0,16(sp)
    8000318c:	00813483          	ld	s1,8(sp)
    80003190:	00013903          	ld	s2,0(sp)
    80003194:	02010113          	addi	sp,sp,32
    80003198:	00008067          	ret

000000008000319c <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00813423          	sd	s0,8(sp)
    800031a4:	01010413          	addi	s0,sp,16
    //KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    //KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    //KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    //TODO take care of numOfFreeBlocks
    //KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    for(int i = buddy->maxLevel;i>=0;i--)
    800031a8:	01852703          	lw	a4,24(a0)
    800031ac:	0080006f          	j	800031b4 <_Z14printBuddyInfoP14buddyAllocator+0x18>
    800031b0:	fff7071b          	addiw	a4,a4,-1
    800031b4:	02074063          	bltz	a4,800031d4 <_Z14printBuddyInfoP14buddyAllocator+0x38>
    {
        //KConsole::trapPrintStringInt("Level ",i);
        //KConsole::trapPrintString("Free blocks on this level\n");
        buddyBlock* curr = buddy->bucket[i].first;
    800031b8:	00270793          	addi	a5,a4,2
    800031bc:	00479793          	slli	a5,a5,0x4
    800031c0:	00f507b3          	add	a5,a0,a5
    800031c4:	0007b783          	ld	a5,0(a5)
        while(curr != 0)
    800031c8:	fe0784e3          	beqz	a5,800031b0 <_Z14printBuddyInfoP14buddyAllocator+0x14>
        {
            //KConsole::trapPrintInt((size_t)curr, 16);
            //KConsole::trapPrintString("\n");
            curr = curr->next;
    800031cc:	0007b783          	ld	a5,0(a5)
        while(curr != 0)
    800031d0:	ff9ff06f          	j	800031c8 <_Z14printBuddyInfoP14buddyAllocator+0x2c>
        }
    }
    //KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800031d4:	00813403          	ld	s0,8(sp)
    800031d8:	01010113          	addi	sp,sp,16
    800031dc:	00008067          	ret

00000000800031e0 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800031e0:	fe010113          	addi	sp,sp,-32
    800031e4:	00113c23          	sd	ra,24(sp)
    800031e8:	00813823          	sd	s0,16(sp)
    800031ec:	00913423          	sd	s1,8(sp)
    800031f0:	01213023          	sd	s2,0(sp)
    800031f4:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    800031f8:	01800513          	li	a0,24
    800031fc:	00002097          	auipc	ra,0x2
    80003200:	f00080e7          	jalr	-256(ra) # 800050fc <_ZN10KSemaphorenwEm>
    80003204:	00050493          	mv	s1,a0
    80003208:	00000593          	li	a1,0
    8000320c:	00002097          	auipc	ra,0x2
    80003210:	c8c080e7          	jalr	-884(ra) # 80004e98 <_ZN10KSemaphoreC1Ei>
    80003214:	00009797          	auipc	a5,0x9
    80003218:	8297b623          	sd	s1,-2004(a5) # 8000ba40 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    8000321c:	01800513          	li	a0,24
    80003220:	00002097          	auipc	ra,0x2
    80003224:	edc080e7          	jalr	-292(ra) # 800050fc <_ZN10KSemaphorenwEm>
    80003228:	00050493          	mv	s1,a0
    8000322c:	00000593          	li	a1,0
    80003230:	00002097          	auipc	ra,0x2
    80003234:	c68080e7          	jalr	-920(ra) # 80004e98 <_ZN10KSemaphoreC1Ei>
    80003238:	00009797          	auipc	a5,0x9
    8000323c:	8097b823          	sd	s1,-2032(a5) # 8000ba48 <_ZN8KConsole19hasCharactersOutputE>
}
    80003240:	01813083          	ld	ra,24(sp)
    80003244:	01013403          	ld	s0,16(sp)
    80003248:	00813483          	ld	s1,8(sp)
    8000324c:	00013903          	ld	s2,0(sp)
    80003250:	02010113          	addi	sp,sp,32
    80003254:	00008067          	ret
    80003258:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    8000325c:	00048513          	mv	a0,s1
    80003260:	00002097          	auipc	ra,0x2
    80003264:	f48080e7          	jalr	-184(ra) # 800051a8 <_ZN10KSemaphoredlEPv>
    80003268:	00090513          	mv	a0,s2
    8000326c:	0000e097          	auipc	ra,0xe
    80003270:	93c080e7          	jalr	-1732(ra) # 80010ba8 <_Unwind_Resume>
    80003274:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003278:	00048513          	mv	a0,s1
    8000327c:	00002097          	auipc	ra,0x2
    80003280:	f2c080e7          	jalr	-212(ra) # 800051a8 <_ZN10KSemaphoredlEPv>
    80003284:	00090513          	mv	a0,s2
    80003288:	0000e097          	auipc	ra,0xe
    8000328c:	920080e7          	jalr	-1760(ra) # 80010ba8 <_Unwind_Resume>

0000000080003290 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003290:	00008697          	auipc	a3,0x8
    80003294:	7b068693          	addi	a3,a3,1968 # 8000ba40 <_ZN8KConsole18hasCharactersInputE>
    80003298:	0106b603          	ld	a2,16(a3)
    8000329c:	00160793          	addi	a5,a2,1
    800032a0:	00002737          	lui	a4,0x2
    800032a4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800032a8:	00e7f7b3          	and	a5,a5,a4
    800032ac:	0186b703          	ld	a4,24(a3)
    800032b0:	04e78263          	beq	a5,a4,800032f4 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00113423          	sd	ra,8(sp)
    800032bc:	00813023          	sd	s0,0(sp)
    800032c0:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800032c4:	0000a717          	auipc	a4,0xa
    800032c8:	7bc70713          	addi	a4,a4,1980 # 8000da80 <_ZN8KConsole11inputBufferE>
    800032cc:	00c70633          	add	a2,a4,a2
    800032d0:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800032d4:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800032d8:	0006b503          	ld	a0,0(a3)
    800032dc:	00002097          	auipc	ra,0x2
    800032e0:	dd8080e7          	jalr	-552(ra) # 800050b4 <_ZN10KSemaphore6signalEv>
}
    800032e4:	00813083          	ld	ra,8(sp)
    800032e8:	00013403          	ld	s0,0(sp)
    800032ec:	01010113          	addi	sp,sp,16
    800032f0:	00008067          	ret
    800032f4:	00008067          	ret

00000000800032f8 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800032f8:	00008797          	auipc	a5,0x8
    800032fc:	6407b783          	ld	a5,1600(a5) # 8000b938 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003300:	0007b783          	ld	a5,0(a5)
    80003304:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003308:	0017f793          	andi	a5,a5,1
    8000330c:	02078063          	beqz	a5,8000332c <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003310:	00008797          	auipc	a5,0x8
    80003314:	6507b783          	ld	a5,1616(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003318:	0007b783          	ld	a5,0(a5)
    8000331c:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003320:	00008797          	auipc	a5,0x8
    80003324:	7407b783          	ld	a5,1856(a5) # 8000ba60 <_ZN8KConsole11pendingGetcE>
    80003328:	00079463          	bnez	a5,80003330 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    8000332c:	00008067          	ret
{
    80003330:	ff010113          	addi	sp,sp,-16
    80003334:	00113423          	sd	ra,8(sp)
    80003338:	00813023          	sd	s0,0(sp)
    8000333c:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003340:	fff78793          	addi	a5,a5,-1
    80003344:	00008717          	auipc	a4,0x8
    80003348:	70f73e23          	sd	a5,1820(a4) # 8000ba60 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	f44080e7          	jalr	-188(ra) # 80003290 <_ZN8KConsole17putCharacterInputEc>
}
    80003354:	00813083          	ld	ra,8(sp)
    80003358:	00013403          	ld	s0,0(sp)
    8000335c:	01010113          	addi	sp,sp,16
    80003360:	00008067          	ret

0000000080003364 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003364:	fe010113          	addi	sp,sp,-32
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	00813823          	sd	s0,16(sp)
    80003370:	00913423          	sd	s1,8(sp)
    80003374:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003378:	00008497          	auipc	s1,0x8
    8000337c:	6c848493          	addi	s1,s1,1736 # 8000ba40 <_ZN8KConsole18hasCharactersInputE>
    80003380:	0004b503          	ld	a0,0(s1)
    80003384:	00002097          	auipc	ra,0x2
    80003388:	bb8080e7          	jalr	-1096(ra) # 80004f3c <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    8000338c:	0184b783          	ld	a5,24(s1)
    80003390:	0104b703          	ld	a4,16(s1)
    80003394:	04e78063          	beq	a5,a4,800033d4 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80003398:	0000a717          	auipc	a4,0xa
    8000339c:	6e870713          	addi	a4,a4,1768 # 8000da80 <_ZN8KConsole11inputBufferE>
    800033a0:	00f70733          	add	a4,a4,a5
    800033a4:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800033a8:	00178793          	addi	a5,a5,1
    800033ac:	00002737          	lui	a4,0x2
    800033b0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800033b4:	00e7f7b3          	and	a5,a5,a4
    800033b8:	00008717          	auipc	a4,0x8
    800033bc:	6af73023          	sd	a5,1696(a4) # 8000ba58 <_ZN8KConsole9inputHeadE>
    return c;
}
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00813483          	ld	s1,8(sp)
    800033cc:	02010113          	addi	sp,sp,32
    800033d0:	00008067          	ret
        return -1;
    800033d4:	0ff00513          	li	a0,255
    800033d8:	fe9ff06f          	j	800033c0 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800033dc <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800033dc:	00008697          	auipc	a3,0x8
    800033e0:	66468693          	addi	a3,a3,1636 # 8000ba40 <_ZN8KConsole18hasCharactersInputE>
    800033e4:	0286b603          	ld	a2,40(a3)
    800033e8:	00160793          	addi	a5,a2,1
    800033ec:	00002737          	lui	a4,0x2
    800033f0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800033f4:	00e7f7b3          	and	a5,a5,a4
    800033f8:	0306b703          	ld	a4,48(a3)
    800033fc:	04e78a63          	beq	a5,a4,80003450 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00113423          	sd	ra,8(sp)
    80003408:	00813023          	sd	s0,0(sp)
    8000340c:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003410:	00068713          	mv	a4,a3
    80003414:	0386b683          	ld	a3,56(a3)
    80003418:	00168693          	addi	a3,a3,1
    8000341c:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003420:	00008697          	auipc	a3,0x8
    80003424:	66068693          	addi	a3,a3,1632 # 8000ba80 <_ZN8KConsole12outputBufferE>
    80003428:	00c68633          	add	a2,a3,a2
    8000342c:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003430:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003434:	00873503          	ld	a0,8(a4)
    80003438:	00002097          	auipc	ra,0x2
    8000343c:	c7c080e7          	jalr	-900(ra) # 800050b4 <_ZN10KSemaphore6signalEv>
}
    80003440:	00813083          	ld	ra,8(sp)
    80003444:	00013403          	ld	s0,0(sp)
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret
    80003450:	00008067          	ret

0000000080003454 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003454:	fe010113          	addi	sp,sp,-32
    80003458:	00113c23          	sd	ra,24(sp)
    8000345c:	00813823          	sd	s0,16(sp)
    80003460:	00913423          	sd	s1,8(sp)
    80003464:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003468:	00008497          	auipc	s1,0x8
    8000346c:	5d848493          	addi	s1,s1,1496 # 8000ba40 <_ZN8KConsole18hasCharactersInputE>
    80003470:	0084b503          	ld	a0,8(s1)
    80003474:	00002097          	auipc	ra,0x2
    80003478:	ac8080e7          	jalr	-1336(ra) # 80004f3c <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    8000347c:	0304b783          	ld	a5,48(s1)
    80003480:	0284b703          	ld	a4,40(s1)
    80003484:	04e78063          	beq	a5,a4,800034c4 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80003488:	00008717          	auipc	a4,0x8
    8000348c:	5f870713          	addi	a4,a4,1528 # 8000ba80 <_ZN8KConsole12outputBufferE>
    80003490:	00f70733          	add	a4,a4,a5
    80003494:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80003498:	00178793          	addi	a5,a5,1
    8000349c:	00002737          	lui	a4,0x2
    800034a0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800034a4:	00e7f7b3          	and	a5,a5,a4
    800034a8:	00008717          	auipc	a4,0x8
    800034ac:	5cf73423          	sd	a5,1480(a4) # 8000ba70 <_ZN8KConsole10outputHeadE>
    return c;
}
    800034b0:	01813083          	ld	ra,24(sp)
    800034b4:	01013403          	ld	s0,16(sp)
    800034b8:	00813483          	ld	s1,8(sp)
    800034bc:	02010113          	addi	sp,sp,32
    800034c0:	00008067          	ret
        return -1;
    800034c4:	0ff00513          	li	a0,255
    800034c8:	fe9ff06f          	j	800034b0 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800034cc <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800034cc:	ff010113          	addi	sp,sp,-16
    800034d0:	00113423          	sd	ra,8(sp)
    800034d4:	00813023          	sd	s0,0(sp)
    800034d8:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800034dc:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800034e0:	0ff57513          	andi	a0,a0,255
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	ef8080e7          	jalr	-264(ra) # 800033dc <_ZN8KConsole18putCharacterOutputEc>
}
    800034ec:	00813083          	ld	ra,8(sp)
    800034f0:	00013403          	ld	s0,0(sp)
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret

00000000800034fc <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800034fc:	fe010113          	addi	sp,sp,-32
    80003500:	00113c23          	sd	ra,24(sp)
    80003504:	00813823          	sd	s0,16(sp)
    80003508:	00913423          	sd	s1,8(sp)
    8000350c:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003510:	00008717          	auipc	a4,0x8
    80003514:	53070713          	addi	a4,a4,1328 # 8000ba40 <_ZN8KConsole18hasCharactersInputE>
    80003518:	02073783          	ld	a5,32(a4)
    8000351c:	00178793          	addi	a5,a5,1
    80003520:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003524:	00000097          	auipc	ra,0x0
    80003528:	e40080e7          	jalr	-448(ra) # 80003364 <_ZN8KConsole17getCharacterInputEv>
    8000352c:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003530:	01b00793          	li	a5,27
    80003534:	02f51663          	bne	a0,a5,80003560 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003538:	00d00793          	li	a5,13
    8000353c:	02f48863          	beq	s1,a5,8000356c <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003540:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003544:	00001097          	auipc	ra,0x1
    80003548:	000080e7          	jalr	ra # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000354c:	01813083          	ld	ra,24(sp)
    80003550:	01013403          	ld	s0,16(sp)
    80003554:	00813483          	ld	s1,8(sp)
    80003558:	02010113          	addi	sp,sp,32
    8000355c:	00008067          	ret
        putCharacterOutput(ch);
    80003560:	00000097          	auipc	ra,0x0
    80003564:	e7c080e7          	jalr	-388(ra) # 800033dc <_ZN8KConsole18putCharacterOutputEc>
    80003568:	fd1ff06f          	j	80003538 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    8000356c:	00d00513          	li	a0,13
    80003570:	00000097          	auipc	ra,0x0
    80003574:	e6c080e7          	jalr	-404(ra) # 800033dc <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003578:	00a00513          	li	a0,10
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	e60080e7          	jalr	-416(ra) # 800033dc <_ZN8KConsole18putCharacterOutputEc>
    80003584:	fbdff06f          	j	80003540 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003588 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00813423          	sd	s0,8(sp)
    80003590:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003594:	00008517          	auipc	a0,0x8
    80003598:	4e453503          	ld	a0,1252(a0) # 8000ba78 <_ZN8KConsole11pendingPutcE>
    8000359c:	00153513          	seqz	a0,a0
    800035a0:	00813403          	ld	s0,8(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00113c23          	sd	ra,24(sp)
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	02010413          	addi	s0,sp,32
    800035bc:	0180006f          	j	800035d4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	e58080e7          	jalr	-424(ra) # 80002418 <_Z11thread_exitv>
    800035c8:	0340006f          	j	800035fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800035cc:	fffff097          	auipc	ra,0xfffff
    800035d0:	e2c080e7          	jalr	-468(ra) # 800023f8 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800035d4:	00008797          	auipc	a5,0x8
    800035d8:	3c47b783          	ld	a5,964(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x70>
    800035dc:	0007c783          	lbu	a5,0(a5)
    800035e0:	00078e63          	beqz	a5,800035fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	fa4080e7          	jalr	-92(ra) # 80003588 <_ZN8KConsole17outputBufferEmptyEv>
    800035ec:	00050863          	beqz	a0,800035fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800035f0:	00008797          	auipc	a5,0x8
    800035f4:	4707b783          	ld	a5,1136(a5) # 8000ba60 <_ZN8KConsole11pendingGetcE>
    800035f8:	fc0784e3          	beqz	a5,800035c0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800035fc:	00008797          	auipc	a5,0x8
    80003600:	33c7b783          	ld	a5,828(a5) # 8000b938 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003604:	0007b783          	ld	a5,0(a5)
    80003608:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    8000360c:	0207f793          	andi	a5,a5,32
    80003610:	fa078ee3          	beqz	a5,800035cc <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003614:	00008797          	auipc	a5,0x8
    80003618:	4647b783          	ld	a5,1124(a5) # 8000ba78 <_ZN8KConsole11pendingPutcE>
    8000361c:	fa0788e3          	beqz	a5,800035cc <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	000080e7          	jalr	ra # 80002620 <_Z20sysCallGetCharOutputv>
    80003628:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    8000362c:	00008717          	auipc	a4,0x8
    80003630:	41470713          	addi	a4,a4,1044 # 8000ba40 <_ZN8KConsole18hasCharactersInputE>
    80003634:	03873783          	ld	a5,56(a4)
    80003638:	fff78793          	addi	a5,a5,-1
    8000363c:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003640:	00008797          	auipc	a5,0x8
    80003644:	2f07b783          	ld	a5,752(a5) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003648:	0007b783          	ld	a5,0(a5)
    8000364c:	fef44703          	lbu	a4,-17(s0)
    80003650:	00e78023          	sb	a4,0(a5)
    80003654:	f81ff06f          	j	800035d4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003658 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00113423          	sd	ra,8(sp)
    80003660:	00813023          	sd	s0,0(sp)
    80003664:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003668:	00000097          	auipc	ra,0x0
    8000366c:	dec080e7          	jalr	-532(ra) # 80003454 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003670:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003674:	00001097          	auipc	ra,0x1
    80003678:	ed0080e7          	jalr	-304(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000367c:	00813083          	ld	ra,8(sp)
    80003680:	00013403          	ld	s0,0(sp)
    80003684:	01010113          	addi	sp,sp,16
    80003688:	00008067          	ret

000000008000368c <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    8000368c:	fe010113          	addi	sp,sp,-32
    80003690:	00113c23          	sd	ra,24(sp)
    80003694:	00813823          	sd	s0,16(sp)
    80003698:	00913423          	sd	s1,8(sp)
    8000369c:	02010413          	addi	s0,sp,32
    800036a0:	00050493          	mv	s1,a0
    while (*string != '\0')
    800036a4:	0004c503          	lbu	a0,0(s1)
    800036a8:	00050a63          	beqz	a0,800036bc <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	d30080e7          	jalr	-720(ra) # 800033dc <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800036b4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800036b8:	fedff06f          	j	800036a4 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800036bc:	01813083          	ld	ra,24(sp)
    800036c0:	01013403          	ld	s0,16(sp)
    800036c4:	00813483          	ld	s1,8(sp)
    800036c8:	02010113          	addi	sp,sp,32
    800036cc:	00008067          	ret

00000000800036d0 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800036d0:	fb010113          	addi	sp,sp,-80
    800036d4:	04113423          	sd	ra,72(sp)
    800036d8:	04813023          	sd	s0,64(sp)
    800036dc:	02913c23          	sd	s1,56(sp)
    800036e0:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800036e4:	00006797          	auipc	a5,0x6
    800036e8:	b7478793          	addi	a5,a5,-1164 # 80009258 <CONSOLE_STATUS+0x248>
    800036ec:	0007b703          	ld	a4,0(a5)
    800036f0:	fce43423          	sd	a4,-56(s0)
    800036f4:	0087b703          	ld	a4,8(a5)
    800036f8:	fce43823          	sd	a4,-48(s0)
    800036fc:	0107c783          	lbu	a5,16(a5)
    80003700:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003704:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003708:	02b57733          	remu	a4,a0,a1
    8000370c:	fe040693          	addi	a3,s0,-32
    80003710:	00e68733          	add	a4,a3,a4
    80003714:	fe874703          	lbu	a4,-24(a4)
    80003718:	009687b3          	add	a5,a3,s1
    8000371c:	0014849b          	addiw	s1,s1,1
    80003720:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003724:	00050793          	mv	a5,a0
    80003728:	02b55533          	divu	a0,a0,a1
    8000372c:	fcb7fee3          	bgeu	a5,a1,80003708 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003730:	fff4849b          	addiw	s1,s1,-1
    80003734:	0004ce63          	bltz	s1,80003750 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003738:	fe040793          	addi	a5,s0,-32
    8000373c:	009787b3          	add	a5,a5,s1
    80003740:	fd87c503          	lbu	a0,-40(a5)
    80003744:	00000097          	auipc	ra,0x0
    80003748:	c98080e7          	jalr	-872(ra) # 800033dc <_ZN8KConsole18putCharacterOutputEc>
    8000374c:	fe5ff06f          	j	80003730 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003750:	04813083          	ld	ra,72(sp)
    80003754:	04013403          	ld	s0,64(sp)
    80003758:	03813483          	ld	s1,56(sp)
    8000375c:	05010113          	addi	sp,sp,80
    80003760:	00008067          	ret

0000000080003764 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003764:	fe010113          	addi	sp,sp,-32
    80003768:	00113c23          	sd	ra,24(sp)
    8000376c:	00813823          	sd	s0,16(sp)
    80003770:	00913423          	sd	s1,8(sp)
    80003774:	01213023          	sd	s2,0(sp)
    80003778:	02010413          	addi	s0,sp,32
    8000377c:	00058493          	mv	s1,a1
    80003780:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003784:	00000097          	auipc	ra,0x0
    80003788:	f08080e7          	jalr	-248(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    8000378c:	00000613          	li	a2,0
    80003790:	00090593          	mv	a1,s2
    80003794:	00048513          	mv	a0,s1
    80003798:	00000097          	auipc	ra,0x0
    8000379c:	f38080e7          	jalr	-200(ra) # 800036d0 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    800037a0:	00006517          	auipc	a0,0x6
    800037a4:	e5850513          	addi	a0,a0,-424 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	ee4080e7          	jalr	-284(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
}
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	00013903          	ld	s2,0(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret

00000000800037c8 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800037c8:	ff010113          	addi	sp,sp,-16
    800037cc:	00813423          	sd	s0,8(sp)
    800037d0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800037d4:	00008797          	auipc	a5,0x8
    800037d8:	1cc7b783          	ld	a5,460(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800037dc:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800037e0:	00500793          	li	a5,5
    800037e4:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800037e8:	0000c797          	auipc	a5,0xc
    800037ec:	2987b783          	ld	a5,664(a5) # 8000fa80 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800037f0:	00000593          	li	a1,0
    while(curr != 0)
    800037f4:	02078063          	beqz	a5,80003814 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800037f8:	02063683          	ld	a3,32(a2)
    800037fc:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003800:	00e6e863          	bltu	a3,a4,80003810 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003804:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003808:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000380c:	fe9ff06f          	j	800037f4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003810:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003814:	00058a63          	beqz	a1,80003828 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003818:	00c5b423          	sd	a2,8(a1)
}
    8000381c:	00813403          	ld	s0,8(sp)
    80003820:	01010113          	addi	sp,sp,16
    80003824:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003828:	0000c797          	auipc	a5,0xc
    8000382c:	24c7bc23          	sd	a2,600(a5) # 8000fa80 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003830:	fedff06f          	j	8000381c <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003834 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003834:	0000c517          	auipc	a0,0xc
    80003838:	24c53503          	ld	a0,588(a0) # 8000fa80 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    8000383c:	06050e63          	beqz	a0,800038b8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003840:	06050c63          	beqz	a0,800038b8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003844:	02053783          	ld	a5,32(a0)
    80003848:	00008717          	auipc	a4,0x8
    8000384c:	13073703          	ld	a4,304(a4) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003850:	00073703          	ld	a4,0(a4)
    80003854:	06f76263          	bltu	a4,a5,800038b8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003858:	fe010113          	addi	sp,sp,-32
    8000385c:	00113c23          	sd	ra,24(sp)
    80003860:	00813823          	sd	s0,16(sp)
    80003864:	00913423          	sd	s1,8(sp)
    80003868:	02010413          	addi	s0,sp,32
    8000386c:	0180006f          	j	80003884 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003870:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003874:	00008717          	auipc	a4,0x8
    80003878:	10473703          	ld	a4,260(a4) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000387c:	00073703          	ld	a4,0(a4)
    80003880:	02f76263          	bltu	a4,a5,800038a4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003884:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003888:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	0b8080e7          	jalr	184(ra) # 80003944 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003894:	0000c797          	auipc	a5,0xc
    80003898:	1e97b623          	sd	s1,492(a5) # 8000fa80 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    8000389c:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800038a0:	fc0498e3          	bnez	s1,80003870 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800038a4:	01813083          	ld	ra,24(sp)
    800038a8:	01013403          	ld	s0,16(sp)
    800038ac:	00813483          	ld	s1,8(sp)
    800038b0:	02010113          	addi	sp,sp,32
    800038b4:	00008067          	ret
    800038b8:	00008067          	ret

00000000800038bc <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800038bc:	ff010113          	addi	sp,sp,-16
    800038c0:	00113423          	sd	ra,8(sp)
    800038c4:	00813023          	sd	s0,0(sp)
    800038c8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800038cc:	00001097          	auipc	ra,0x1
    800038d0:	37c080e7          	jalr	892(ra) # 80004c48 <_ZN15MemoryAllocator7kmallocEm>
}
    800038d4:	00813083          	ld	ra,8(sp)
    800038d8:	00013403          	ld	s0,0(sp)
    800038dc:	01010113          	addi	sp,sp,16
    800038e0:	00008067          	ret

00000000800038e4 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800038e4:	ff010113          	addi	sp,sp,-16
    800038e8:	00113423          	sd	ra,8(sp)
    800038ec:	00813023          	sd	s0,0(sp)
    800038f0:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800038f4:	00001097          	auipc	ra,0x1
    800038f8:	3b8080e7          	jalr	952(ra) # 80004cac <_ZN15MemoryAllocator5kfreeEPv>
}
    800038fc:	00813083          	ld	ra,8(sp)
    80003900:	00013403          	ld	s0,0(sp)
    80003904:	01010113          	addi	sp,sp,16
    80003908:	00008067          	ret

000000008000390c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000390c:	ff010113          	addi	sp,sp,-16
    80003910:	00813423          	sd	s0,8(sp)
    80003914:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003918:	0000c797          	auipc	a5,0xc
    8000391c:	1707b783          	ld	a5,368(a5) # 8000fa88 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003920:	00000513          	li	a0,0
    while(curr != 0)
    80003924:	00078863          	beqz	a5,80003934 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003928:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    8000392c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003930:	ff5ff06f          	j	80003924 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003934:	0005051b          	sext.w	a0,a0
    80003938:	00813403          	ld	s0,8(sp)
    8000393c:	01010113          	addi	sp,sp,16
    80003940:	00008067          	ret

0000000080003944 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003944:	ff010113          	addi	sp,sp,-16
    80003948:	00813423          	sd	s0,8(sp)
    8000394c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003950:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003954:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003958:	0000c797          	auipc	a5,0xc
    8000395c:	1307b783          	ld	a5,304(a5) # 8000fa88 <_ZN9Scheduler16schedulerPCBHeadE>
    80003960:	02078263          	beqz	a5,80003984 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003964:	0000c797          	auipc	a5,0xc
    80003968:	12478793          	addi	a5,a5,292 # 8000fa88 <_ZN9Scheduler16schedulerPCBHeadE>
    8000396c:	0087b703          	ld	a4,8(a5)
    80003970:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003974:	00a7b423          	sd	a0,8(a5)
    }
}
    80003978:	00813403          	ld	s0,8(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003984:	0000c797          	auipc	a5,0xc
    80003988:	10478793          	addi	a5,a5,260 # 8000fa88 <_ZN9Scheduler16schedulerPCBHeadE>
    8000398c:	00a7b423          	sd	a0,8(a5)
    80003990:	00a7b023          	sd	a0,0(a5)
    80003994:	fe5ff06f          	j	80003978 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003998 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00813423          	sd	s0,8(sp)
    800039a0:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800039a4:	0000c517          	auipc	a0,0xc
    800039a8:	0e453503          	ld	a0,228(a0) # 8000fa88 <_ZN9Scheduler16schedulerPCBHeadE>
    800039ac:	00050c63          	beqz	a0,800039c4 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800039b0:	00853783          	ld	a5,8(a0)
    800039b4:	00078e63          	beqz	a5,800039d0 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800039b8:	0000c717          	auipc	a4,0xc
    800039bc:	0cf73823          	sd	a5,208(a4) # 8000fa88 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800039c0:	00053423          	sd	zero,8(a0)
    return retval;
}
    800039c4:	00813403          	ld	s0,8(sp)
    800039c8:	01010113          	addi	sp,sp,16
    800039cc:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800039d0:	0000c797          	auipc	a5,0xc
    800039d4:	0b878793          	addi	a5,a5,184 # 8000fa88 <_ZN9Scheduler16schedulerPCBHeadE>
    800039d8:	0007b423          	sd	zero,8(a5)
    800039dc:	0007b023          	sd	zero,0(a5)
    800039e0:	fe1ff06f          	j	800039c0 <_ZN9Scheduler3getEv+0x28>

00000000800039e4 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    800039e4:	fe010113          	addi	sp,sp,-32
    800039e8:	00113c23          	sd	ra,24(sp)
    800039ec:	00813823          	sd	s0,16(sp)
    800039f0:	00913423          	sd	s1,8(sp)
    800039f4:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    800039f8:	0000c497          	auipc	s1,0xc
    800039fc:	0904b483          	ld	s1,144(s1) # 8000fa88 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003a00:	02048863          	beqz	s1,80003a30 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003a04:	00000613          	li	a2,0
    80003a08:	01000593          	li	a1,16
    80003a0c:	00048513          	mv	a0,s1
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	cc0080e7          	jalr	-832(ra) # 800036d0 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003a18:	00006517          	auipc	a0,0x6
    80003a1c:	be050513          	addi	a0,a0,-1056 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	c6c080e7          	jalr	-916(ra) # 8000368c <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003a28:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003a2c:	fd5ff06f          	j	80003a00 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003a30:	01813083          	ld	ra,24(sp)
    80003a34:	01013403          	ld	s0,16(sp)
    80003a38:	00813483          	ld	s1,8(sp)
    80003a3c:	02010113          	addi	sp,sp,32
    80003a40:	00008067          	ret

0000000080003a44 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003a44:	ff010113          	addi	sp,sp,-16
    80003a48:	00113423          	sd	ra,8(sp)
    80003a4c:	00813023          	sd	s0,0(sp)
    80003a50:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003a54:	00001097          	auipc	ra,0x1
    80003a58:	a30080e7          	jalr	-1488(ra) # 80004484 <_ZN5Riscv10kernelMainEv>
    80003a5c:	00813083          	ld	ra,8(sp)
    80003a60:	00013403          	ld	s0,0(sp)
    80003a64:	01010113          	addi	sp,sp,16
    80003a68:	00008067          	ret

0000000080003a6c <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"

void buddyInitTest1()
{
    80003a6c:	ff010113          	addi	sp,sp,-16
    80003a70:	00113423          	sd	ra,8(sp)
    80003a74:	00813023          	sd	s0,0(sp)
    80003a78:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003a7c:	01200593          	li	a1,18
    80003a80:	00008797          	auipc	a5,0x8
    80003a84:	ec07b783          	ld	a5,-320(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003a88:	0007b503          	ld	a0,0(a5)
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	5d8080e7          	jalr	1496(ra) # 80003064 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003a94:	fffff097          	auipc	ra,0xfffff
    80003a98:	708080e7          	jalr	1800(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
}
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret

0000000080003aac <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003aac:	fe010113          	addi	sp,sp,-32
    80003ab0:	00113c23          	sd	ra,24(sp)
    80003ab4:	00813823          	sd	s0,16(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003ac0:	00a00593          	li	a1,10
    80003ac4:	00008797          	auipc	a5,0x8
    80003ac8:	e7c7b783          	ld	a5,-388(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003acc:	0007b503          	ld	a0,0(a5)
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	594080e7          	jalr	1428(ra) # 80003064 <_Z10buddy_initPvm>
    80003ad8:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003adc:	fffff097          	auipc	ra,0xfffff
    80003ae0:	6c0080e7          	jalr	1728(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003ae4:	00100593          	li	a1,1
    80003ae8:	00048513          	mv	a0,s1
    80003aec:	fffff097          	auipc	ra,0xfffff
    80003af0:	388080e7          	jalr	904(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003af4:	00048513          	mv	a0,s1
    80003af8:	fffff097          	auipc	ra,0xfffff
    80003afc:	6a4080e7          	jalr	1700(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003b00:	00100593          	li	a1,1
    80003b04:	00048513          	mv	a0,s1
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	36c080e7          	jalr	876(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003b10:	00048513          	mv	a0,s1
    80003b14:	fffff097          	auipc	ra,0xfffff
    80003b18:	688080e7          	jalr	1672(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003b1c:	00100593          	li	a1,1
    80003b20:	00048513          	mv	a0,s1
    80003b24:	fffff097          	auipc	ra,0xfffff
    80003b28:	350080e7          	jalr	848(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	66c080e7          	jalr	1644(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003b38:	00300593          	li	a1,3
    80003b3c:	00048513          	mv	a0,s1
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	334080e7          	jalr	820(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	fffff097          	auipc	ra,0xfffff
    80003b50:	650080e7          	jalr	1616(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
}
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	02010113          	addi	sp,sp,32
    80003b64:	00008067          	ret

0000000080003b68 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003b68:	fe010113          	addi	sp,sp,-32
    80003b6c:	00113c23          	sd	ra,24(sp)
    80003b70:	00813823          	sd	s0,16(sp)
    80003b74:	00913423          	sd	s1,8(sp)
    80003b78:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003b7c:	00a00593          	li	a1,10
    80003b80:	00008797          	auipc	a5,0x8
    80003b84:	dc07b783          	ld	a5,-576(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b88:	0007b503          	ld	a0,0(a5)
    80003b8c:	fffff097          	auipc	ra,0xfffff
    80003b90:	4d8080e7          	jalr	1240(ra) # 80003064 <_Z10buddy_initPvm>
    80003b94:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003b98:	06400593          	li	a1,100
    80003b9c:	fffff097          	auipc	ra,0xfffff
    80003ba0:	2d8080e7          	jalr	728(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003ba4:	00050c63          	beqz	a0,80003bbc <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003ba8:	01813083          	ld	ra,24(sp)
    80003bac:	01013403          	ld	s0,16(sp)
    80003bb0:	00813483          	ld	s1,8(sp)
    80003bb4:	02010113          	addi	sp,sp,32
    80003bb8:	00008067          	ret
        printBuddyInfo(buddy);
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	5dc080e7          	jalr	1500(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
}
    80003bc8:	fe1ff06f          	j	80003ba8 <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003bcc <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003bcc:	fd010113          	addi	sp,sp,-48
    80003bd0:	02113423          	sd	ra,40(sp)
    80003bd4:	02813023          	sd	s0,32(sp)
    80003bd8:	00913c23          	sd	s1,24(sp)
    80003bdc:	01213823          	sd	s2,16(sp)
    80003be0:	01313423          	sd	s3,8(sp)
    80003be4:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003be8:	00a00593          	li	a1,10
    80003bec:	00008797          	auipc	a5,0x8
    80003bf0:	d547b783          	ld	a5,-684(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003bf4:	0007b503          	ld	a0,0(a5)
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	46c080e7          	jalr	1132(ra) # 80003064 <_Z10buddy_initPvm>
    80003c00:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	598080e7          	jalr	1432(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003c0c:	00100593          	li	a1,1
    80003c10:	00048513          	mv	a0,s1
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	260080e7          	jalr	608(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003c1c:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003c20:	00048513          	mv	a0,s1
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	578080e7          	jalr	1400(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003c2c:	00100613          	li	a2,1
    80003c30:	00090593          	mv	a1,s2
    80003c34:	00048513          	mv	a0,s1
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	50c080e7          	jalr	1292(ra) # 80003144 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003c40:	00048513          	mv	a0,s1
    80003c44:	fffff097          	auipc	ra,0xfffff
    80003c48:	558080e7          	jalr	1368(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003c4c:	00200593          	li	a1,2
    80003c50:	00048513          	mv	a0,s1
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	220080e7          	jalr	544(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003c5c:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003c60:	00300593          	li	a1,3
    80003c64:	00048513          	mv	a0,s1
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	20c080e7          	jalr	524(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003c70:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003c74:	00048513          	mv	a0,s1
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	524080e7          	jalr	1316(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003c80:	00200613          	li	a2,2
    80003c84:	00090593          	mv	a1,s2
    80003c88:	00048513          	mv	a0,s1
    80003c8c:	fffff097          	auipc	ra,0xfffff
    80003c90:	4b8080e7          	jalr	1208(ra) # 80003144 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003c94:	00048513          	mv	a0,s1
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	504080e7          	jalr	1284(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003ca0:	00100593          	li	a1,1
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	fffff097          	auipc	ra,0xfffff
    80003cac:	1cc080e7          	jalr	460(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003cb0:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003cb4:	00048513          	mv	a0,s1
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	4e4080e7          	jalr	1252(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003cc0:	00300613          	li	a2,3
    80003cc4:	00098593          	mv	a1,s3
    80003cc8:	00048513          	mv	a0,s1
    80003ccc:	fffff097          	auipc	ra,0xfffff
    80003cd0:	478080e7          	jalr	1144(ra) # 80003144 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003cd4:	00048513          	mv	a0,s1
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	4c4080e7          	jalr	1220(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003ce0:	00100613          	li	a2,1
    80003ce4:	00090593          	mv	a1,s2
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	fffff097          	auipc	ra,0xfffff
    80003cf0:	458080e7          	jalr	1112(ra) # 80003144 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003cf4:	00048513          	mv	a0,s1
    80003cf8:	fffff097          	auipc	ra,0xfffff
    80003cfc:	4a4080e7          	jalr	1188(ra) # 8000319c <_Z14printBuddyInfoP14buddyAllocator>
    80003d00:	02813083          	ld	ra,40(sp)
    80003d04:	02013403          	ld	s0,32(sp)
    80003d08:	01813483          	ld	s1,24(sp)
    80003d0c:	01013903          	ld	s2,16(sp)
    80003d10:	00813983          	ld	s3,8(sp)
    80003d14:	03010113          	addi	sp,sp,48
    80003d18:	00008067          	ret

0000000080003d1c <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003d1c:	ff010113          	addi	sp,sp,-16
    80003d20:	00113423          	sd	ra,8(sp)
    80003d24:	00813023          	sd	s0,0(sp)
    80003d28:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003d2c:	00053783          	ld	a5,0(a0)
    80003d30:	0107b783          	ld	a5,16(a5)
    80003d34:	000780e7          	jalr	a5
}
    80003d38:	00813083          	ld	ra,8(sp)
    80003d3c:	00013403          	ld	s0,0(sp)
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret

0000000080003d48 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003d48:	00008797          	auipc	a5,0x8
    80003d4c:	b9078793          	addi	a5,a5,-1136 # 8000b8d8 <_ZTV6Thread+0x10>
    80003d50:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003d54:	00853503          	ld	a0,8(a0)
    80003d58:	02050663          	beqz	a0,80003d84 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003d5c:	ff010113          	addi	sp,sp,-16
    80003d60:	00113423          	sd	ra,8(sp)
    80003d64:	00813023          	sd	s0,0(sp)
    80003d68:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	908080e7          	jalr	-1784(ra) # 80002674 <_ZN7_threaddlEPv>
}
    80003d74:	00813083          	ld	ra,8(sp)
    80003d78:	00013403          	ld	s0,0(sp)
    80003d7c:	01010113          	addi	sp,sp,16
    80003d80:	00008067          	ret
    80003d84:	00008067          	ret

0000000080003d88 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003d88:	00008797          	auipc	a5,0x8
    80003d8c:	b7878793          	addi	a5,a5,-1160 # 8000b900 <_ZTV9Semaphore+0x10>
    80003d90:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003d94:	00853503          	ld	a0,8(a0)
    80003d98:	02050663          	beqz	a0,80003dc4 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003d9c:	ff010113          	addi	sp,sp,-16
    80003da0:	00113423          	sd	ra,8(sp)
    80003da4:	00813023          	sd	s0,0(sp)
    80003da8:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003dac:	00000097          	auipc	ra,0x0
    80003db0:	464080e7          	jalr	1124(ra) # 80004210 <_ZN4_semdlEPv>
}
    80003db4:	00813083          	ld	ra,8(sp)
    80003db8:	00013403          	ld	s0,0(sp)
    80003dbc:	01010113          	addi	sp,sp,16
    80003dc0:	00008067          	ret
    80003dc4:	00008067          	ret

0000000080003dc8 <_Znwm>:
{
    80003dc8:	ff010113          	addi	sp,sp,-16
    80003dcc:	00113423          	sd	ra,8(sp)
    80003dd0:	00813023          	sd	s0,0(sp)
    80003dd4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	544080e7          	jalr	1348(ra) # 8000231c <_Z9mem_allocm>
}
    80003de0:	00813083          	ld	ra,8(sp)
    80003de4:	00013403          	ld	s0,0(sp)
    80003de8:	01010113          	addi	sp,sp,16
    80003dec:	00008067          	ret

0000000080003df0 <_ZdlPv>:
{
    80003df0:	ff010113          	addi	sp,sp,-16
    80003df4:	00113423          	sd	ra,8(sp)
    80003df8:	00813023          	sd	s0,0(sp)
    80003dfc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	54c080e7          	jalr	1356(ra) # 8000234c <_Z8mem_freePv>
}
    80003e08:	00813083          	ld	ra,8(sp)
    80003e0c:	00013403          	ld	s0,0(sp)
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret

0000000080003e18 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003e18:	fe010113          	addi	sp,sp,-32
    80003e1c:	00113c23          	sd	ra,24(sp)
    80003e20:	00813823          	sd	s0,16(sp)
    80003e24:	00913423          	sd	s1,8(sp)
    80003e28:	02010413          	addi	s0,sp,32
    80003e2c:	00050493          	mv	s1,a0
}
    80003e30:	00000097          	auipc	ra,0x0
    80003e34:	f18080e7          	jalr	-232(ra) # 80003d48 <_ZN6ThreadD1Ev>
    80003e38:	00048513          	mv	a0,s1
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	fb4080e7          	jalr	-76(ra) # 80003df0 <_ZdlPv>
    80003e44:	01813083          	ld	ra,24(sp)
    80003e48:	01013403          	ld	s0,16(sp)
    80003e4c:	00813483          	ld	s1,8(sp)
    80003e50:	02010113          	addi	sp,sp,32
    80003e54:	00008067          	ret

0000000080003e58 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00113c23          	sd	ra,24(sp)
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	02010413          	addi	s0,sp,32
    80003e6c:	00050493          	mv	s1,a0
}
    80003e70:	00000097          	auipc	ra,0x0
    80003e74:	f18080e7          	jalr	-232(ra) # 80003d88 <_ZN9SemaphoreD1Ev>
    80003e78:	00048513          	mv	a0,s1
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	f74080e7          	jalr	-140(ra) # 80003df0 <_ZdlPv>
    80003e84:	01813083          	ld	ra,24(sp)
    80003e88:	01013403          	ld	s0,16(sp)
    80003e8c:	00813483          	ld	s1,8(sp)
    80003e90:	02010113          	addi	sp,sp,32
    80003e94:	00008067          	ret

0000000080003e98 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003e98:	00853503          	ld	a0,8(a0)
    80003e9c:	02050663          	beqz	a0,80003ec8 <_ZN6Thread5startEv+0x30>
{
    80003ea0:	ff010113          	addi	sp,sp,-16
    80003ea4:	00113423          	sd	ra,8(sp)
    80003ea8:	00813023          	sd	s0,0(sp)
    80003eac:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	678080e7          	jalr	1656(ra) # 80002528 <_Z12thread_startPv>
}
    80003eb8:	00813083          	ld	ra,8(sp)
    80003ebc:	00013403          	ld	s0,0(sp)
    80003ec0:	01010113          	addi	sp,sp,16
    80003ec4:	00008067          	ret
        return -1;
    80003ec8:	fff00513          	li	a0,-1
}
    80003ecc:	00008067          	ret

0000000080003ed0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003ed0:	ff010113          	addi	sp,sp,-16
    80003ed4:	00113423          	sd	ra,8(sp)
    80003ed8:	00813023          	sd	s0,0(sp)
    80003edc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	518080e7          	jalr	1304(ra) # 800023f8 <_Z15thread_dispatchv>
}
    80003ee8:	00813083          	ld	ra,8(sp)
    80003eec:	00013403          	ld	s0,0(sp)
    80003ef0:	01010113          	addi	sp,sp,16
    80003ef4:	00008067          	ret

0000000080003ef8 <_ZN6Thread5sleepEm>:
{
    80003ef8:	ff010113          	addi	sp,sp,-16
    80003efc:	00113423          	sd	ra,8(sp)
    80003f00:	00813023          	sd	s0,0(sp)
    80003f04:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	5f4080e7          	jalr	1524(ra) # 800024fc <_Z10time_sleepm>
}
    80003f10:	00813083          	ld	ra,8(sp)
    80003f14:	00013403          	ld	s0,0(sp)
    80003f18:	01010113          	addi	sp,sp,16
    80003f1c:	00008067          	ret

0000000080003f20 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003f20:	fe010113          	addi	sp,sp,-32
    80003f24:	00113c23          	sd	ra,24(sp)
    80003f28:	00813823          	sd	s0,16(sp)
    80003f2c:	00913423          	sd	s1,8(sp)
    80003f30:	01213023          	sd	s2,0(sp)
    80003f34:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003f38:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003f3c:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003f40:	0004b783          	ld	a5,0(s1)
    80003f44:	0187b783          	ld	a5,24(a5)
    80003f48:	00048513          	mv	a0,s1
    80003f4c:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003f50:	00090513          	mv	a0,s2
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	fa4080e7          	jalr	-92(ra) # 80003ef8 <_ZN6Thread5sleepEm>
    while(true)
    80003f5c:	fe5ff06f          	j	80003f40 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003f60 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003f60:	ff010113          	addi	sp,sp,-16
    80003f64:	00113423          	sd	ra,8(sp)
    80003f68:	00813023          	sd	s0,0(sp)
    80003f6c:	01010413          	addi	s0,sp,16
    80003f70:	00008797          	auipc	a5,0x8
    80003f74:	96878793          	addi	a5,a5,-1688 # 8000b8d8 <_ZTV6Thread+0x10>
    80003f78:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003f7c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80003f80:	00850513          	addi	a0,a0,8
    80003f84:	ffffe097          	auipc	ra,0xffffe
    80003f88:	5d0080e7          	jalr	1488(ra) # 80002554 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003f8c:	00813083          	ld	ra,8(sp)
    80003f90:	00013403          	ld	s0,0(sp)
    80003f94:	01010113          	addi	sp,sp,16
    80003f98:	00008067          	ret

0000000080003f9c <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003f9c:	ff010113          	addi	sp,sp,-16
    80003fa0:	00113423          	sd	ra,8(sp)
    80003fa4:	00813023          	sd	s0,0(sp)
    80003fa8:	01010413          	addi	s0,sp,16
    80003fac:	00008797          	auipc	a5,0x8
    80003fb0:	92c78793          	addi	a5,a5,-1748 # 8000b8d8 <_ZTV6Thread+0x10>
    80003fb4:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003fb8:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003fbc:	00050613          	mv	a2,a0
    80003fc0:	00000597          	auipc	a1,0x0
    80003fc4:	d5c58593          	addi	a1,a1,-676 # 80003d1c <_ZN6Thread6runnerEPv>
    80003fc8:	00850513          	addi	a0,a0,8
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	588080e7          	jalr	1416(ra) # 80002554 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003fd4:	00813083          	ld	ra,8(sp)
    80003fd8:	00013403          	ld	s0,0(sp)
    80003fdc:	01010113          	addi	sp,sp,16
    80003fe0:	00008067          	ret

0000000080003fe4 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003fe4:	00853503          	ld	a0,8(a0)
    80003fe8:	02050663          	beqz	a0,80004014 <_ZN9Semaphore4waitEv+0x30>
{
    80003fec:	ff010113          	addi	sp,sp,-16
    80003ff0:	00113423          	sd	ra,8(sp)
    80003ff4:	00813023          	sd	s0,0(sp)
    80003ff8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003ffc:	ffffe097          	auipc	ra,0xffffe
    80004000:	4a8080e7          	jalr	1192(ra) # 800024a4 <_Z8sem_waitP4_sem>
}
    80004004:	00813083          	ld	ra,8(sp)
    80004008:	00013403          	ld	s0,0(sp)
    8000400c:	01010113          	addi	sp,sp,16
    80004010:	00008067          	ret
        return -1;
    80004014:	fff00513          	li	a0,-1
}
    80004018:	00008067          	ret

000000008000401c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000401c:	fe010113          	addi	sp,sp,-32
    80004020:	00113c23          	sd	ra,24(sp)
    80004024:	00813823          	sd	s0,16(sp)
    80004028:	00913423          	sd	s1,8(sp)
    8000402c:	02010413          	addi	s0,sp,32
    80004030:	00050493          	mv	s1,a0
    80004034:	00008797          	auipc	a5,0x8
    80004038:	8cc78793          	addi	a5,a5,-1844 # 8000b900 <_ZTV9Semaphore+0x10>
    8000403c:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80004040:	00850513          	addi	a0,a0,8
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	3fc080e7          	jalr	1020(ra) # 80002440 <_Z8sem_openPP4_semj>
    if(retval != 0)
    8000404c:	00050463          	beqz	a0,80004054 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80004050:	0004b423          	sd	zero,8(s1)
}
    80004054:	01813083          	ld	ra,24(sp)
    80004058:	01013403          	ld	s0,16(sp)
    8000405c:	00813483          	ld	s1,8(sp)
    80004060:	02010113          	addi	sp,sp,32
    80004064:	00008067          	ret

0000000080004068 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80004068:	00853503          	ld	a0,8(a0)
    8000406c:	02050663          	beqz	a0,80004098 <_ZN9Semaphore6signalEv+0x30>
{
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00113423          	sd	ra,8(sp)
    80004078:	00813023          	sd	s0,0(sp)
    8000407c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	450080e7          	jalr	1104(ra) # 800024d0 <_Z10sem_signalP4_sem>
}
    80004088:	00813083          	ld	ra,8(sp)
    8000408c:	00013403          	ld	s0,0(sp)
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00008067          	ret
        return -1;
    80004098:	fff00513          	li	a0,-1
}
    8000409c:	00008067          	ret

00000000800040a0 <_ZN7Console4getcEv>:
{
    800040a0:	ff010113          	addi	sp,sp,-16
    800040a4:	00113423          	sd	ra,8(sp)
    800040a8:	00813023          	sd	s0,0(sp)
    800040ac:	01010413          	addi	s0,sp,16
    return ::getc();
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	524080e7          	jalr	1316(ra) # 800025d4 <_Z4getcv>
}
    800040b8:	00813083          	ld	ra,8(sp)
    800040bc:	00013403          	ld	s0,0(sp)
    800040c0:	01010113          	addi	sp,sp,16
    800040c4:	00008067          	ret

00000000800040c8 <_ZN7Console4putcEc>:
{
    800040c8:	ff010113          	addi	sp,sp,-16
    800040cc:	00113423          	sd	ra,8(sp)
    800040d0:	00813023          	sd	s0,0(sp)
    800040d4:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	524080e7          	jalr	1316(ra) # 800025fc <_Z4putcc>
}
    800040e0:	00813083          	ld	ra,8(sp)
    800040e4:	00013403          	ld	s0,0(sp)
    800040e8:	01010113          	addi	sp,sp,16
    800040ec:	00008067          	ret

00000000800040f0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800040f0:	fe010113          	addi	sp,sp,-32
    800040f4:	00113c23          	sd	ra,24(sp)
    800040f8:	00813823          	sd	s0,16(sp)
    800040fc:	00913423          	sd	s1,8(sp)
    80004100:	01213023          	sd	s2,0(sp)
    80004104:	02010413          	addi	s0,sp,32
    80004108:	00050493          	mv	s1,a0
    8000410c:	00058913          	mv	s2,a1
    80004110:	01000513          	li	a0,16
    80004114:	00000097          	auipc	ra,0x0
    80004118:	cb4080e7          	jalr	-844(ra) # 80003dc8 <_Znwm>
    8000411c:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80004120:	00953023          	sd	s1,0(a0)
    80004124:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004128:	00000597          	auipc	a1,0x0
    8000412c:	df858593          	addi	a1,a1,-520 # 80003f20 <_ZN14PeriodicThread6runnerEPv>
    80004130:	00048513          	mv	a0,s1
    80004134:	00000097          	auipc	ra,0x0
    80004138:	e2c080e7          	jalr	-468(ra) # 80003f60 <_ZN6ThreadC1EPFvPvES0_>
    8000413c:	00007797          	auipc	a5,0x7
    80004140:	76c78793          	addi	a5,a5,1900 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    80004144:	00f4b023          	sd	a5,0(s1)
}
    80004148:	01813083          	ld	ra,24(sp)
    8000414c:	01013403          	ld	s0,16(sp)
    80004150:	00813483          	ld	s1,8(sp)
    80004154:	00013903          	ld	s2,0(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00813423          	sd	s0,8(sp)
    80004168:	01010413          	addi	s0,sp,16
    8000416c:	00813403          	ld	s0,8(sp)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret

0000000080004178 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80004178:	ff010113          	addi	sp,sp,-16
    8000417c:	00813423          	sd	s0,8(sp)
    80004180:	01010413          	addi	s0,sp,16
    80004184:	00813403          	ld	s0,8(sp)
    80004188:	01010113          	addi	sp,sp,16
    8000418c:	00008067          	ret

0000000080004190 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80004190:	ff010113          	addi	sp,sp,-16
    80004194:	00113423          	sd	ra,8(sp)
    80004198:	00813023          	sd	s0,0(sp)
    8000419c:	01010413          	addi	s0,sp,16
    800041a0:	00007797          	auipc	a5,0x7
    800041a4:	70878793          	addi	a5,a5,1800 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    800041a8:	00f53023          	sd	a5,0(a0)
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	b9c080e7          	jalr	-1124(ra) # 80003d48 <_ZN6ThreadD1Ev>
    800041b4:	00813083          	ld	ra,8(sp)
    800041b8:	00013403          	ld	s0,0(sp)
    800041bc:	01010113          	addi	sp,sp,16
    800041c0:	00008067          	ret

00000000800041c4 <_ZN14PeriodicThreadD0Ev>:
    800041c4:	fe010113          	addi	sp,sp,-32
    800041c8:	00113c23          	sd	ra,24(sp)
    800041cc:	00813823          	sd	s0,16(sp)
    800041d0:	00913423          	sd	s1,8(sp)
    800041d4:	02010413          	addi	s0,sp,32
    800041d8:	00050493          	mv	s1,a0
    800041dc:	00007797          	auipc	a5,0x7
    800041e0:	6cc78793          	addi	a5,a5,1740 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    800041e4:	00f53023          	sd	a5,0(a0)
    800041e8:	00000097          	auipc	ra,0x0
    800041ec:	b60080e7          	jalr	-1184(ra) # 80003d48 <_ZN6ThreadD1Ev>
    800041f0:	00048513          	mv	a0,s1
    800041f4:	00000097          	auipc	ra,0x0
    800041f8:	bfc080e7          	jalr	-1028(ra) # 80003df0 <_ZdlPv>
    800041fc:	01813083          	ld	ra,24(sp)
    80004200:	01013403          	ld	s0,16(sp)
    80004204:	00813483          	ld	s1,8(sp)
    80004208:	02010113          	addi	sp,sp,32
    8000420c:	00008067          	ret

0000000080004210 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00113423          	sd	ra,8(sp)
    80004218:	00813023          	sd	s0,0(sp)
    8000421c:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	258080e7          	jalr	600(ra) # 80002478 <_Z9sem_closeP4_sem>
}
    80004228:	00813083          	ld	ra,8(sp)
    8000422c:	00013403          	ld	s0,0(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <_ZN5Riscv20initMemoryAllocationEv>:
bool Riscv::kernelMainCalled = false;
kmem_cache_t * Riscv::pcbCache = nullptr;
kmem_cache_t * Riscv::semaphoreCache = nullptr;

void Riscv::initMemoryAllocation()
{
    80004238:	ff010113          	addi	sp,sp,-16
    8000423c:	00113423          	sd	ra,8(sp)
    80004240:	00813023          	sd	s0,0(sp)
    80004244:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80004248:	00007797          	auipc	a5,0x7
    8000424c:	6f87b783          	ld	a5,1784(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004250:	0007b503          	ld	a0,0(a5)
    80004254:	00007797          	auipc	a5,0x7
    80004258:	7547b783          	ld	a5,1876(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000425c:	0007b783          	ld	a5,0(a5)
    80004260:	40a787b3          	sub	a5,a5,a0
    80004264:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80004268:	00a00713          	li	a4,10
    8000426c:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80004270:	00001737          	lui	a4,0x1
    80004274:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80004278:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    8000427c:	fffff737          	lui	a4,0xfffff
    80004280:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80004284:	00f50533          	add	a0,a0,a5
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	5d0080e7          	jalr	1488(ra) # 80004858 <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    80004290:	00813083          	ld	ra,8(sp)
    80004294:	00013403          	ld	s0,0(sp)
    80004298:	01010113          	addi	sp,sp,16
    8000429c:	00008067          	ret

00000000800042a0 <_ZN5Riscv10initSystemEv>:

void Riscv::initSystem()
{
    800042a0:	fe010113          	addi	sp,sp,-32
    800042a4:	00113c23          	sd	ra,24(sp)
    800042a8:	00813823          	sd	s0,16(sp)
    800042ac:	00913423          	sd	s1,8(sp)
    800042b0:	01213023          	sd	s2,0(sp)
    800042b4:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    800042b8:	00007797          	auipc	a5,0x7
    800042bc:	6987b783          	ld	a5,1688(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800042c0:	10579073          	csrw	stvec,a5

    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800042c4:	00007497          	auipc	s1,0x7
    800042c8:	67c4b483          	ld	s1,1660(s1) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    800042cc:	0004b503          	ld	a0,0(s1)
    800042d0:	00007797          	auipc	a5,0x7
    800042d4:	6d87b783          	ld	a5,1752(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    800042d8:	0007b783          	ld	a5,0(a5)
    800042dc:	40a787b3          	sub	a5,a5,a0
    800042e0:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    800042e4:	00a00713          	li	a4,10
    800042e8:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    800042ec:	00001737          	lui	a4,0x1
    800042f0:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    800042f4:	00e787b3          	add	a5,a5,a4
    800042f8:	00c7d913          	srli	s2,a5,0xc
    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    800042fc:	fffff737          	lui	a4,0xfffff
    80004300:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80004304:	00f50533          	add	a0,a0,a5
    80004308:	00000097          	auipc	ra,0x0
    8000430c:	550080e7          	jalr	1360(ra) # 80004858 <_ZN15MemoryAllocator10initMemoryEPv>

    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80004310:	0009059b          	sext.w	a1,s2
    80004314:	0004b503          	ld	a0,0(s1)
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	888080e7          	jalr	-1912(ra) # 80001ba0 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80004320:	00000693          	li	a3,0
    80004324:	00000613          	li	a2,0
    80004328:	06000593          	li	a1,96
    8000432c:	00005517          	auipc	a0,0x5
    80004330:	f4450513          	addi	a0,a0,-188 # 80009270 <CONSOLE_STATUS+0x260>
    80004334:	ffffe097          	auipc	ra,0xffffe
    80004338:	9dc080e7          	jalr	-1572(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000433c:	0000b497          	auipc	s1,0xb
    80004340:	75c48493          	addi	s1,s1,1884 # 8000fa98 <_ZN5Riscv8pcbCacheE>
    80004344:	00a4b023          	sd	a0,0(s1)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004348:	00000693          	li	a3,0
    8000434c:	00000613          	li	a2,0
    80004350:	01800593          	li	a1,24
    80004354:	00005517          	auipc	a0,0x5
    80004358:	f2c50513          	addi	a0,a0,-212 # 80009280 <CONSOLE_STATUS+0x270>
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	9b4080e7          	jalr	-1612(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004364:	00a4b423          	sd	a0,8(s1)

    //initMemoryAllocation();
    PCB::initialize();
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	514080e7          	jalr	1300(ra) # 8000287c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004370:	fffff097          	auipc	ra,0xfffff
    80004374:	e70080e7          	jalr	-400(ra) # 800031e0 <_ZN8KConsole10initializeEv>

}
    80004378:	01813083          	ld	ra,24(sp)
    8000437c:	01013403          	ld	s0,16(sp)
    80004380:	00813483          	ld	s1,8(sp)
    80004384:	00013903          	ld	s2,0(sp)
    80004388:	02010113          	addi	sp,sp,32
    8000438c:	00008067          	ret

0000000080004390 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80004390:	ff010113          	addi	sp,sp,-16
    80004394:	00813423          	sd	s0,8(sp)
    80004398:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000439c:	00200793          	li	a5,2
    800043a0:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800043a4:	00813403          	ld	s0,8(sp)
    800043a8:	01010113          	addi	sp,sp,16
    800043ac:	00008067          	ret

00000000800043b0 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800043b0:	ff010113          	addi	sp,sp,-16
    800043b4:	00813423          	sd	s0,8(sp)
    800043b8:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800043bc:	00200793          	li	a5,2
    800043c0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800043c4:	00813403          	ld	s0,8(sp)
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00008067          	ret

00000000800043d0 <_ZN5Riscv9endSystemEv>:
{
    800043d0:	ff010113          	addi	sp,sp,-16
    800043d4:	00113423          	sd	ra,8(sp)
    800043d8:	00813023          	sd	s0,0(sp)
    800043dc:	01010413          	addi	s0,sp,16
    disableInterrupts();
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	fd0080e7          	jalr	-48(ra) # 800043b0 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    800043e8:	00100793          	li	a5,1
    800043ec:	0000b717          	auipc	a4,0xb
    800043f0:	6af70e23          	sb	a5,1724(a4) # 8000faa8 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	5a4080e7          	jalr	1444(ra) # 80003998 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    800043fc:	fe051ce3          	bnez	a0,800043f4 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004400:	00007797          	auipc	a5,0x7
    80004404:	5887b783          	ld	a5,1416(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004408:	0007b503          	ld	a0,0(a5)
    8000440c:	fffff097          	auipc	ra,0xfffff
    80004410:	538080e7          	jalr	1336(ra) # 80003944 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004414:	00007797          	auipc	a5,0x7
    80004418:	5447b783          	ld	a5,1348(a5) # 8000b958 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000441c:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80004420:	00000097          	auipc	ra,0x0
    80004424:	f70080e7          	jalr	-144(ra) # 80004390 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80004428:	00007797          	auipc	a5,0x7
    8000442c:	5607b783          	ld	a5,1376(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004430:	0007b503          	ld	a0,0(a5)
    80004434:	ffffe097          	auipc	ra,0xffffe
    80004438:	568080e7          	jalr	1384(ra) # 8000299c <_ZN3PCB10isFinishedEv>
    8000443c:	00051863          	bnez	a0,8000444c <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	fb8080e7          	jalr	-72(ra) # 800023f8 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80004448:	fe1ff06f          	j	80004428 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    8000444c:	00000097          	auipc	ra,0x0
    80004450:	f64080e7          	jalr	-156(ra) # 800043b0 <_ZN5Riscv17disableInterruptsEv>
}
    80004454:	00813083          	ld	ra,8(sp)
    80004458:	00013403          	ld	s0,0(sp)
    8000445c:	01010113          	addi	sp,sp,16
    80004460:	00008067          	ret

0000000080004464 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004464:	ff010113          	addi	sp,sp,-16
    80004468:	00813423          	sd	s0,8(sp)
    8000446c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80004470:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80004474:	10200073          	sret
}
    80004478:	00813403          	ld	s0,8(sp)
    8000447c:	01010113          	addi	sp,sp,16
    80004480:	00008067          	ret

0000000080004484 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80004484:	0000b797          	auipc	a5,0xb
    80004488:	6257c783          	lbu	a5,1573(a5) # 8000faa9 <_ZN5Riscv16kernelMainCalledE>
    8000448c:	00078463          	beqz	a5,80004494 <_ZN5Riscv10kernelMainEv+0x10>
    80004490:	00008067          	ret
{
    80004494:	ff010113          	addi	sp,sp,-16
    80004498:	00113423          	sd	ra,8(sp)
    8000449c:	00813023          	sd	s0,0(sp)
    800044a0:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800044a4:	00100793          	li	a5,1
    800044a8:	0000b717          	auipc	a4,0xb
    800044ac:	60f700a3          	sb	a5,1537(a4) # 8000faa9 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800044b0:	00000097          	auipc	ra,0x0
    800044b4:	df0080e7          	jalr	-528(ra) # 800042a0 <_ZN5Riscv10initSystemEv>
    //slabCacheCreateTest2();
    //slabInitTest();
    //disableTimerInterrupts();
    enableInterrupts();
    800044b8:	00000097          	auipc	ra,0x0
    800044bc:	ed8080e7          	jalr	-296(ra) # 80004390 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800044c0:	00007797          	auipc	a5,0x7
    800044c4:	4d07b783          	ld	a5,1232(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x68>
    800044c8:	0007b503          	ld	a0,0(a5)
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	4d0080e7          	jalr	1232(ra) # 8000299c <_ZN3PCB10isFinishedEv>
    800044d4:	00051863          	bnez	a0,800044e4 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800044d8:	ffffe097          	auipc	ra,0xffffe
    800044dc:	f20080e7          	jalr	-224(ra) # 800023f8 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    800044e0:	fe1ff06f          	j	800044c0 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    800044e4:	00000097          	auipc	ra,0x0
    800044e8:	eec080e7          	jalr	-276(ra) # 800043d0 <_ZN5Riscv9endSystemEv>
}
    800044ec:	00813083          	ld	ra,8(sp)
    800044f0:	00013403          	ld	s0,0(sp)
    800044f4:	01010113          	addi	sp,sp,16
    800044f8:	00008067          	ret

00000000800044fc <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    800044fc:	ff010113          	addi	sp,sp,-16
    80004500:	00113423          	sd	ra,8(sp)
    80004504:	00813023          	sd	s0,0(sp)
    80004508:	01010413          	addi	s0,sp,16
    userMain();
    8000450c:	00002097          	auipc	ra,0x2
    80004510:	a6c080e7          	jalr	-1428(ra) # 80005f78 <_Z8userMainv>
}
    80004514:	00813083          	ld	ra,8(sp)
    80004518:	00013403          	ld	s0,0(sp)
    8000451c:	01010113          	addi	sp,sp,16
    80004520:	00008067          	ret

0000000080004524 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004524:	ff010113          	addi	sp,sp,-16
    80004528:	00813423          	sd	s0,8(sp)
    8000452c:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004530:	00200793          	li	a5,2
    80004534:	1047b073          	csrc	sie,a5
}
    80004538:	00813403          	ld	s0,8(sp)
    8000453c:	01010113          	addi	sp,sp,16
    80004540:	00008067          	ret

0000000080004544 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004544:	ff010113          	addi	sp,sp,-16
    80004548:	00813423          	sd	s0,8(sp)
    8000454c:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80004550:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004554:	00007717          	auipc	a4,0x7
    80004558:	44c73703          	ld	a4,1100(a4) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000455c:	00073703          	ld	a4,0(a4)
    80004560:	01073703          	ld	a4,16(a4)
    80004564:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004568:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    8000456c:	00078593          	mv	a1,a5
}
    80004570:	00813403          	ld	s0,8(sp)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret

000000008000457c <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    8000457c:	ff010113          	addi	sp,sp,-16
    80004580:	00813423          	sd	s0,8(sp)
    80004584:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004588:	00007797          	auipc	a5,0x7
    8000458c:	4187b783          	ld	a5,1048(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004590:	0007b783          	ld	a5,0(a5)
    80004594:	0007c783          	lbu	a5,0(a5)
    80004598:	00078c63          	beqz	a5,800045b0 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000459c:	10000793          	li	a5,256
    800045a0:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800045a4:	00813403          	ld	s0,8(sp)
    800045a8:	01010113          	addi	sp,sp,16
    800045ac:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800045b0:	10000793          	li	a5,256
    800045b4:	1007b073          	csrc	sstatus,a5
    800045b8:	fedff06f          	j	800045a4 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800045bc <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800045bc:	f9010113          	addi	sp,sp,-112
    800045c0:	06113423          	sd	ra,104(sp)
    800045c4:	06813023          	sd	s0,96(sp)
    800045c8:	04913c23          	sd	s1,88(sp)
    800045cc:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800045d0:	00070713          	mv	a4,a4
    800045d4:	00007797          	auipc	a5,0x7
    800045d8:	3ec7b783          	ld	a5,1004(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x98>
    800045dc:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800045e0:	00007797          	auipc	a5,0x7
    800045e4:	3c07b783          	ld	a5,960(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800045e8:	0007b783          	ld	a5,0(a5)
    800045ec:	14002773          	csrr	a4,sscratch
    800045f0:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800045f4:	142027f3          	csrr	a5,scause
    800045f8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800045fc:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80004600:	00900713          	li	a4,9
    80004604:	02f76e63          	bltu	a4,a5,80004640 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80004608:	00800713          	li	a4,8
    8000460c:	12e7f463          	bgeu	a5,a4,80004734 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80004610:	00500713          	li	a4,5
    80004614:	10e78a63          	beq	a5,a4,80004728 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80004618:	00700713          	li	a4,7
    8000461c:	00e79863          	bne	a5,a4,8000462c <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	3a0080e7          	jalr	928(ra) # 800029c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004628:	0dc0006f          	j	80004704 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    8000462c:	00200713          	li	a4,2
    80004630:	0ce79a63          	bne	a5,a4,80004704 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004634:	ffffe097          	auipc	ra,0xffffe
    80004638:	38c080e7          	jalr	908(ra) # 800029c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000463c:	0c80006f          	j	80004704 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004640:	fff00713          	li	a4,-1
    80004644:	03f71713          	slli	a4,a4,0x3f
    80004648:	00170713          	addi	a4,a4,1
    8000464c:	02e78863          	beq	a5,a4,8000467c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    80004650:	fff00713          	li	a4,-1
    80004654:	03f71713          	slli	a4,a4,0x3f
    80004658:	00970713          	addi	a4,a4,9
    8000465c:	0ae79463          	bne	a5,a4,80004704 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    80004660:	fffff097          	auipc	ra,0xfffff
    80004664:	c98080e7          	jalr	-872(ra) # 800032f8 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004668:	00002097          	auipc	ra,0x2
    8000466c:	4ac080e7          	jalr	1196(ra) # 80006b14 <plic_claim>
    80004670:	00002097          	auipc	ra,0x2
    80004674:	4dc080e7          	jalr	1244(ra) # 80006b4c <plic_complete>
            break;
    80004678:	08c0006f          	j	80004704 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000467c:	141027f3          	csrr	a5,sepc
    80004680:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004684:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004688:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000468c:	100027f3          	csrr	a5,sstatus
    80004690:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004694:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004698:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    8000469c:	00200793          	li	a5,2
    800046a0:	1447b073          	csrc	sip,a5
            totalTime++;
    800046a4:	0000b717          	auipc	a4,0xb
    800046a8:	3f470713          	addi	a4,a4,1012 # 8000fa98 <_ZN5Riscv8pcbCacheE>
    800046ac:	01873783          	ld	a5,24(a4)
    800046b0:	00178793          	addi	a5,a5,1
    800046b4:	00f73c23          	sd	a5,24(a4)
            PCB::timeSliceCounter++;
    800046b8:	00007497          	auipc	s1,0x7
    800046bc:	2b04b483          	ld	s1,688(s1) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x40>
    800046c0:	0004b783          	ld	a5,0(s1)
    800046c4:	00178793          	addi	a5,a5,1
    800046c8:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800046cc:	fffff097          	auipc	ra,0xfffff
    800046d0:	168080e7          	jalr	360(ra) # 80003834 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800046d4:	00007797          	auipc	a5,0x7
    800046d8:	2cc7b783          	ld	a5,716(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800046dc:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800046e0:	0187b783          	ld	a5,24(a5)
    800046e4:	0004b703          	ld	a4,0(s1)
    800046e8:	02f77863          	bgeu	a4,a5,80004718 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    800046ec:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800046f0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800046f4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800046f8:	14179073          	csrw	sepc,a5
            changePrivMode();
    800046fc:	00000097          	auipc	ra,0x0
    80004700:	e80080e7          	jalr	-384(ra) # 8000457c <_ZN5Riscv14changePrivModeEv>
}
    80004704:	06813083          	ld	ra,104(sp)
    80004708:	06013403          	ld	s0,96(sp)
    8000470c:	05813483          	ld	s1,88(sp)
    80004710:	07010113          	addi	sp,sp,112
    80004714:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80004718:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	03c080e7          	jalr	60(ra) # 80002758 <_ZN3PCB8dispatchEv>
    80004724:	fc9ff06f          	j	800046ec <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	298080e7          	jalr	664(ra) # 800029c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004730:	fd5ff06f          	j	80004704 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004734:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004738:	14102773          	csrr	a4,sepc
    8000473c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004740:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004744:	00470713          	addi	a4,a4,4
    80004748:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000474c:	10002773          	csrr	a4,sstatus
    80004750:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004754:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004758:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    8000475c:	04300713          	li	a4,67
    80004760:	02f76463          	bltu	a4,a5,80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80004764:	00279793          	slli	a5,a5,0x2
    80004768:	00005717          	auipc	a4,0x5
    8000476c:	b2c70713          	addi	a4,a4,-1236 # 80009294 <CONSOLE_STATUS+0x284>
    80004770:	00e787b3          	add	a5,a5,a4
    80004774:	0007a783          	lw	a5,0(a5)
    80004778:	00e787b3          	add	a5,a5,a4
    8000477c:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80004780:	00000097          	auipc	ra,0x0
    80004784:	4f0080e7          	jalr	1264(ra) # 80004c70 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80004788:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000478c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004790:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004794:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004798:	00000097          	auipc	ra,0x0
    8000479c:	de4080e7          	jalr	-540(ra) # 8000457c <_ZN5Riscv14changePrivModeEv>
}
    800047a0:	f65ff06f          	j	80004704 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    800047a4:	00000097          	auipc	ra,0x0
    800047a8:	530080e7          	jalr	1328(ra) # 80004cd4 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800047ac:	fddff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	3d4080e7          	jalr	980(ra) # 80002b84 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800047b8:	fd1ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    800047bc:	ffffe097          	auipc	ra,0xffffe
    800047c0:	2e4080e7          	jalr	740(ra) # 80002aa0 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    800047c4:	fc5ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    800047c8:	ffffe097          	auipc	ra,0xffffe
    800047cc:	378080e7          	jalr	888(ra) # 80002b40 <_ZN3PCB18threadStartHandlerEv>
                    break;
    800047d0:	fb9ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    800047d4:	ffffe097          	auipc	ra,0xffffe
    800047d8:	238080e7          	jalr	568(ra) # 80002a0c <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800047dc:	fadff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	1e0080e7          	jalr	480(ra) # 800029c0 <_ZN3PCB17threadExitHandlerEv>
                    break;
    800047e8:	fa1ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    800047ec:	ffffe097          	auipc	ra,0xffffe
    800047f0:	250080e7          	jalr	592(ra) # 80002a3c <_ZN3PCB18threadSleepHandlerEv>
                    break;
    800047f4:	f95ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    800047f8:	ffffe097          	auipc	ra,0xffffe
    800047fc:	420080e7          	jalr	1056(ra) # 80002c18 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004800:	f89ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80004804:	00001097          	auipc	ra,0x1
    80004808:	92c080e7          	jalr	-1748(ra) # 80005130 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    8000480c:	f7dff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80004810:	00001097          	auipc	ra,0x1
    80004814:	9d0080e7          	jalr	-1584(ra) # 800051e0 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004818:	f71ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    8000481c:	00001097          	auipc	ra,0x1
    80004820:	a18080e7          	jalr	-1512(ra) # 80005234 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004824:	f65ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	a50080e7          	jalr	-1456(ra) # 80005278 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004830:	f59ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004834:	fffff097          	auipc	ra,0xfffff
    80004838:	cc8080e7          	jalr	-824(ra) # 800034fc <_ZN8KConsole11getcHandlerEv>
                    break;
    8000483c:	f4dff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80004840:	fffff097          	auipc	ra,0xfffff
    80004844:	c8c080e7          	jalr	-884(ra) # 800034cc <_ZN8KConsole11putcHandlerEv>
                    break;
    80004848:	f41ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    8000484c:	fffff097          	auipc	ra,0xfffff
    80004850:	e0c080e7          	jalr	-500(ra) # 80003658 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004854:	f35ff06f          	j	80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080004858 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004858:	ff010113          	addi	sp,sp,-16
    8000485c:	00813423          	sd	s0,8(sp)
    80004860:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004864:	0000b717          	auipc	a4,0xb
    80004868:	25472703          	lw	a4,596(a4) # 8000fab8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000486c:	00100793          	li	a5,1
    80004870:	02f70c63          	beq	a4,a5,800048a8 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004874:	0000b797          	auipc	a5,0xb
    80004878:	24478793          	addi	a5,a5,580 # 8000fab8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000487c:	00100713          	li	a4,1
    80004880:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004884:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    80004888:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    8000488c:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004890:	00007797          	auipc	a5,0x7
    80004894:	1187b783          	ld	a5,280(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004898:	0007b783          	ld	a5,0(a5)
    8000489c:	40a787b3          	sub	a5,a5,a0
    800048a0:	ff178793          	addi	a5,a5,-15
    800048a4:	00f53023          	sd	a5,0(a0)
}
    800048a8:	00813403          	ld	s0,8(sp)
    800048ac:	01010113          	addi	sp,sp,16
    800048b0:	00008067          	ret

00000000800048b4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    800048b4:	ff010113          	addi	sp,sp,-16
    800048b8:	00813423          	sd	s0,8(sp)
    800048bc:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800048c0:	0000b797          	auipc	a5,0xb
    800048c4:	1f87a783          	lw	a5,504(a5) # 8000fab8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800048c8:	02078a63          	beqz	a5,800048fc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800048cc:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    800048d0:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    800048d4:	0000b797          	auipc	a5,0xb
    800048d8:	1ec7b783          	ld	a5,492(a5) # 8000fac0 <_ZN15MemoryAllocator13headAllocatedE>
    800048dc:	02078663          	beqz	a5,80004908 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800048e0:	00007717          	auipc	a4,0x7
    800048e4:	0c873703          	ld	a4,200(a4) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    800048e8:	00073703          	ld	a4,0(a4)
    800048ec:	02c76463          	bltu	a4,a2,80004914 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    800048f0:	00863783          	ld	a5,8(a2)
    800048f4:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    800048f8:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    800048fc:	00813403          	ld	s0,8(sp)
    80004900:	01010113          	addi	sp,sp,16
    80004904:	00008067          	ret
        headAllocated = newAllocated;
    80004908:	0000b797          	auipc	a5,0xb
    8000490c:	1aa7bc23          	sd	a0,440(a5) # 8000fac0 <_ZN15MemoryAllocator13headAllocatedE>
    80004910:	fedff06f          	j	800048fc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004914:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004918:	0000b797          	auipc	a5,0xb
    8000491c:	1aa7b423          	sd	a0,424(a5) # 8000fac0 <_ZN15MemoryAllocator13headAllocatedE>
    80004920:	fddff06f          	j	800048fc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004924 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004924:	ff010113          	addi	sp,sp,-16
    80004928:	00813423          	sd	s0,8(sp)
    8000492c:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004930:	0000b797          	auipc	a5,0xb
    80004934:	1887a783          	lw	a5,392(a5) # 8000fab8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004938:	02078c63          	beqz	a5,80004970 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    8000493c:	0000b797          	auipc	a5,0xb
    80004940:	1847b783          	ld	a5,388(a5) # 8000fac0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004944:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004948:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    8000494c:	00000713          	li	a4,0
    while(curr != 0)
    80004950:	00078c63          	beqz	a5,80004968 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004954:	00f56863          	bltu	a0,a5,80004964 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004958:	00078713          	mv	a4,a5
        curr = curr->next;
    8000495c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004960:	ff1ff06f          	j	80004950 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004964:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004968:	00070a63          	beqz	a4,8000497c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    8000496c:	00a73423          	sd	a0,8(a4)
}
    80004970:	00813403          	ld	s0,8(sp)
    80004974:	01010113          	addi	sp,sp,16
    80004978:	00008067          	ret
        headAllocated = newAllocated;
    8000497c:	0000b797          	auipc	a5,0xb
    80004980:	14a7b223          	sd	a0,324(a5) # 8000fac0 <_ZN15MemoryAllocator13headAllocatedE>
    80004984:	fedff06f          	j	80004970 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004988 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004988:	0000b797          	auipc	a5,0xb
    8000498c:	1307a783          	lw	a5,304(a5) # 8000fab8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004990:	0e078e63          	beqz	a5,80004a8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	02010413          	addi	s0,sp,32
    800049a8:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800049ac:	0000b497          	auipc	s1,0xb
    800049b0:	11c4b483          	ld	s1,284(s1) # 8000fac8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800049b4:	00000713          	li	a4,0
    while(curr != 0)
    800049b8:	0a048e63          	beqz	s1,80004a74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    800049bc:	0004b783          	ld	a5,0(s1)
    800049c0:	00b7f863          	bgeu	a5,a1,800049d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800049c4:	00048713          	mv	a4,s1
        curr = curr->next;
    800049c8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800049cc:	fedff06f          	j	800049b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800049d0:	01058693          	addi	a3,a1,16
    800049d4:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800049d8:	01078613          	addi	a2,a5,16
    800049dc:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800049e0:	00007517          	auipc	a0,0x7
    800049e4:	fc853503          	ld	a0,-56(a0) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    800049e8:	00053503          	ld	a0,0(a0)
    800049ec:	06d56063          	bltu	a0,a3,80004a4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800049f0:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    800049f4:	01000813          	li	a6,16
    800049f8:	02a87663          	bgeu	a6,a0,80004a24 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800049fc:	0084b783          	ld	a5,8(s1)
    80004a00:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004a04:	ff050513          	addi	a0,a0,-16
    80004a08:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004a0c:	00070663          	beqz	a4,80004a18 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004a10:	00d73423          	sd	a3,8(a4)
    80004a14:	0400006f          	j	80004a54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004a18:	0000b797          	auipc	a5,0xb
    80004a1c:	0ad7b823          	sd	a3,176(a5) # 8000fac8 <_ZN15MemoryAllocator8headFreeE>
    80004a20:	0340006f          	j	80004a54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004a24:	00070a63          	beqz	a4,80004a38 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004a28:	0084b683          	ld	a3,8(s1)
    80004a2c:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004a30:	00078593          	mv	a1,a5
    80004a34:	0200006f          	j	80004a54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004a38:	0084b703          	ld	a4,8(s1)
    80004a3c:	0000b697          	auipc	a3,0xb
    80004a40:	08e6b623          	sd	a4,140(a3) # 8000fac8 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004a44:	00078593          	mv	a1,a5
    80004a48:	00c0006f          	j	80004a54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004a4c:	00070e63          	beqz	a4,80004a68 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004a50:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004a54:	00048513          	mv	a0,s1
    80004a58:	00000097          	auipc	ra,0x0
    80004a5c:	e5c080e7          	jalr	-420(ra) # 800048b4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004a60:	01048513          	addi	a0,s1,16
            break;
    80004a64:	0140006f          	j	80004a78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004a68:	0000b797          	auipc	a5,0xb
    80004a6c:	0607b023          	sd	zero,96(a5) # 8000fac8 <_ZN15MemoryAllocator8headFreeE>
    80004a70:	fe5ff06f          	j	80004a54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004a74:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004a78:	01813083          	ld	ra,24(sp)
    80004a7c:	01013403          	ld	s0,16(sp)
    80004a80:	00813483          	ld	s1,8(sp)
    80004a84:	02010113          	addi	sp,sp,32
    80004a88:	00008067          	ret
        return nullptr;
    80004a8c:	00000513          	li	a0,0
}
    80004a90:	00008067          	ret

0000000080004a94 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004a94:	ff010113          	addi	sp,sp,-16
    80004a98:	00113423          	sd	ra,8(sp)
    80004a9c:	00813023          	sd	s0,0(sp)
    80004aa0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	ee4080e7          	jalr	-284(ra) # 80004988 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004aac:	00813083          	ld	ra,8(sp)
    80004ab0:	00013403          	ld	s0,0(sp)
    80004ab4:	01010113          	addi	sp,sp,16
    80004ab8:	00008067          	ret

0000000080004abc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004abc:	ff010113          	addi	sp,sp,-16
    80004ac0:	00813423          	sd	s0,8(sp)
    80004ac4:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004ac8:	0000b797          	auipc	a5,0xb
    80004acc:	ff07a783          	lw	a5,-16(a5) # 8000fab8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004ad0:	06078263          	beqz	a5,80004b34 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004ad4:	0000b797          	auipc	a5,0xb
    80004ad8:	ff47b783          	ld	a5,-12(a5) # 8000fac8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004adc:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80004ae0:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004ae4:	00000713          	li	a4,0
    while(curr != 0)
    80004ae8:	00078c63          	beqz	a5,80004b00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004aec:	00f56863          	bltu	a0,a5,80004afc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004af0:	00078713          	mv	a4,a5
        curr = curr->next;
    80004af4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004af8:	ff1ff06f          	j	80004ae8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004afc:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004b00:	04070063          	beqz	a4,80004b40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004b04:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004b08:	00853783          	ld	a5,8(a0)
    80004b0c:	00078a63          	beqz	a5,80004b20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004b10:	00053603          	ld	a2,0(a0)
    80004b14:	01060693          	addi	a3,a2,16
    80004b18:	00d506b3          	add	a3,a0,a3
    80004b1c:	02d78863          	beq	a5,a3,80004b4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004b20:	00070a63          	beqz	a4,80004b34 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004b24:	00073683          	ld	a3,0(a4)
    80004b28:	01068793          	addi	a5,a3,16
    80004b2c:	00f707b3          	add	a5,a4,a5
    80004b30:	02a78c63          	beq	a5,a0,80004b68 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004b34:	00813403          	ld	s0,8(sp)
    80004b38:	01010113          	addi	sp,sp,16
    80004b3c:	00008067          	ret
        headFree = newSegment;
    80004b40:	0000b797          	auipc	a5,0xb
    80004b44:	f8a7b423          	sd	a0,-120(a5) # 8000fac8 <_ZN15MemoryAllocator8headFreeE>
    80004b48:	fc1ff06f          	j	80004b08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004b4c:	0007b683          	ld	a3,0(a5)
    80004b50:	00d60633          	add	a2,a2,a3
    80004b54:	01060613          	addi	a2,a2,16
    80004b58:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004b5c:	0087b783          	ld	a5,8(a5)
    80004b60:	00f53423          	sd	a5,8(a0)
    80004b64:	fbdff06f          	j	80004b20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004b68:	00053783          	ld	a5,0(a0)
    80004b6c:	00f686b3          	add	a3,a3,a5
    80004b70:	01068693          	addi	a3,a3,16
    80004b74:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004b78:	00853783          	ld	a5,8(a0)
    80004b7c:	00f73423          	sd	a5,8(a4)
    80004b80:	fb5ff06f          	j	80004b34 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004b84 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004b84:	0000b797          	auipc	a5,0xb
    80004b88:	f347a783          	lw	a5,-204(a5) # 8000fab8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004b8c:	08078263          	beqz	a5,80004c10 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004b90:	fe010113          	addi	sp,sp,-32
    80004b94:	00113c23          	sd	ra,24(sp)
    80004b98:	00813823          	sd	s0,16(sp)
    80004b9c:	00913423          	sd	s1,8(sp)
    80004ba0:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004ba4:	0000b497          	auipc	s1,0xb
    80004ba8:	f1c4b483          	ld	s1,-228(s1) # 8000fac0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004bac:	00000713          	li	a4,0
    while(curr != 0)
    80004bb0:	02048a63          	beqz	s1,80004be4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004bb4:	01048793          	addi	a5,s1,16
    80004bb8:	00a78863          	beq	a5,a0,80004bc8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004bbc:	00048713          	mv	a4,s1
        curr = curr->next;
    80004bc0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004bc4:	fedff06f          	j	80004bb0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004bc8:	02070c63          	beqz	a4,80004c00 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004bcc:	0084b783          	ld	a5,8(s1)
    80004bd0:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004bd4:	0004b583          	ld	a1,0(s1)
    80004bd8:	00048513          	mv	a0,s1
    80004bdc:	00000097          	auipc	ra,0x0
    80004be0:	ee0080e7          	jalr	-288(ra) # 80004abc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004be4:	02048a63          	beqz	s1,80004c18 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004be8:	00000513          	li	a0,0
    else
        return 1;
}
    80004bec:	01813083          	ld	ra,24(sp)
    80004bf0:	01013403          	ld	s0,16(sp)
    80004bf4:	00813483          	ld	s1,8(sp)
    80004bf8:	02010113          	addi	sp,sp,32
    80004bfc:	00008067          	ret
                headAllocated = curr->next;
    80004c00:	0084b783          	ld	a5,8(s1)
    80004c04:	0000b717          	auipc	a4,0xb
    80004c08:	eaf73e23          	sd	a5,-324(a4) # 8000fac0 <_ZN15MemoryAllocator13headAllocatedE>
    80004c0c:	fc9ff06f          	j	80004bd4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004c10:	00100513          	li	a0,1
}
    80004c14:	00008067          	ret
        return 1;
    80004c18:	00100513          	li	a0,1
    80004c1c:	fd1ff06f          	j	80004bec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004c20 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004c20:	ff010113          	addi	sp,sp,-16
    80004c24:	00113423          	sd	ra,8(sp)
    80004c28:	00813023          	sd	s0,0(sp)
    80004c2c:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004c30:	00000097          	auipc	ra,0x0
    80004c34:	f54080e7          	jalr	-172(ra) # 80004b84 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004c38:	00813083          	ld	ra,8(sp)
    80004c3c:	00013403          	ld	s0,0(sp)
    80004c40:	01010113          	addi	sp,sp,16
    80004c44:	00008067          	ret

0000000080004c48 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004c48:	ff010113          	addi	sp,sp,-16
    80004c4c:	00113423          	sd	ra,8(sp)
    80004c50:	00813023          	sd	s0,0(sp)
    80004c54:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004c58:	00000097          	auipc	ra,0x0
    80004c5c:	e3c080e7          	jalr	-452(ra) # 80004a94 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004c60:	00813083          	ld	ra,8(sp)
    80004c64:	00013403          	ld	s0,0(sp)
    80004c68:	01010113          	addi	sp,sp,16
    80004c6c:	00008067          	ret

0000000080004c70 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004c70:	ff010113          	addi	sp,sp,-16
    80004c74:	00113423          	sd	ra,8(sp)
    80004c78:	00813023          	sd	s0,0(sp)
    80004c7c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004c80:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004c84:	00651513          	slli	a0,a0,0x6
    80004c88:	00000097          	auipc	ra,0x0
    80004c8c:	fc0080e7          	jalr	-64(ra) # 80004c48 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004c90:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	8b0080e7          	jalr	-1872(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004c9c:	00813083          	ld	ra,8(sp)
    80004ca0:	00013403          	ld	s0,0(sp)
    80004ca4:	01010113          	addi	sp,sp,16
    80004ca8:	00008067          	ret

0000000080004cac <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004cac:	ff010113          	addi	sp,sp,-16
    80004cb0:	00113423          	sd	ra,8(sp)
    80004cb4:	00813023          	sd	s0,0(sp)
    80004cb8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	f64080e7          	jalr	-156(ra) # 80004c20 <_ZN15MemoryAllocator8mem_freeEPv>
    80004cc4:	00813083          	ld	ra,8(sp)
    80004cc8:	00013403          	ld	s0,0(sp)
    80004ccc:	01010113          	addi	sp,sp,16
    80004cd0:	00008067          	ret

0000000080004cd4 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004cd4:	ff010113          	addi	sp,sp,-16
    80004cd8:	00113423          	sd	ra,8(sp)
    80004cdc:	00813023          	sd	s0,0(sp)
    80004ce0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004ce4:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004ce8:	00000097          	auipc	ra,0x0
    80004cec:	fc4080e7          	jalr	-60(ra) # 80004cac <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004cf0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004cf4:	00000097          	auipc	ra,0x0
    80004cf8:	850080e7          	jalr	-1968(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004cfc:	00813083          	ld	ra,8(sp)
    80004d00:	00013403          	ld	s0,0(sp)
    80004d04:	01010113          	addi	sp,sp,16
    80004d08:	00008067          	ret

0000000080004d0c <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"

void slabInitTest()
{
    80004d0c:	ff010113          	addi	sp,sp,-16
    80004d10:	00113423          	sd	ra,8(sp)
    80004d14:	00813023          	sd	s0,0(sp)
    80004d18:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004d1c:	00f00593          	li	a1,15
    80004d20:	00007797          	auipc	a5,0x7
    80004d24:	c207b783          	ld	a5,-992(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d28:	0007b503          	ld	a0,0(a5)
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	e74080e7          	jalr	-396(ra) # 80001ba0 <_Z9kmem_initPvi>
}
    80004d34:	00813083          	ld	ra,8(sp)
    80004d38:	00013403          	ld	s0,0(sp)
    80004d3c:	01010113          	addi	sp,sp,16
    80004d40:	00008067          	ret

0000000080004d44 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004d44:	fe010113          	addi	sp,sp,-32
    80004d48:	00113c23          	sd	ra,24(sp)
    80004d4c:	00813823          	sd	s0,16(sp)
    80004d50:	00913423          	sd	s1,8(sp)
    80004d54:	01213023          	sd	s2,0(sp)
    80004d58:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004d5c:	00f00593          	li	a1,15
    80004d60:	00007797          	auipc	a5,0x7
    80004d64:	be07b783          	ld	a5,-1056(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d68:	0007b503          	ld	a0,0(a5)
    80004d6c:	ffffd097          	auipc	ra,0xffffd
    80004d70:	e34080e7          	jalr	-460(ra) # 80001ba0 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004d74:	00000693          	li	a3,0
    80004d78:	00000613          	li	a2,0
    80004d7c:	00a00593          	li	a1,10
    80004d80:	00004517          	auipc	a0,0x4
    80004d84:	62850513          	addi	a0,a0,1576 # 800093a8 <CONSOLE_STATUS+0x398>
    80004d88:	ffffd097          	auipc	ra,0xffffd
    80004d8c:	f88080e7          	jalr	-120(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004d90:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004d94:	00000693          	li	a3,0
    80004d98:	00000613          	li	a2,0
    80004d9c:	00a00593          	li	a1,10
    80004da0:	00004517          	auipc	a0,0x4
    80004da4:	61850513          	addi	a0,a0,1560 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	f68080e7          	jalr	-152(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004db0:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004db4:	00000693          	li	a3,0
    80004db8:	00000613          	li	a2,0
    80004dbc:	00a00593          	li	a1,10
    80004dc0:	00004517          	auipc	a0,0x4
    80004dc4:	60850513          	addi	a0,a0,1544 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80004dc8:	ffffd097          	auipc	ra,0xffffd
    80004dcc:	f48080e7          	jalr	-184(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004dd0:	00048a63          	beqz	s1,80004de4 <_Z19slabCacheCreateTestv+0xa0>
    80004dd4:	00090863          	beqz	s2,80004de4 <_Z19slabCacheCreateTestv+0xa0>
    80004dd8:	00050663          	beqz	a0,80004de4 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	1a0080e7          	jalr	416(ra) # 80001f7c <_Z22printSlabAllocatorInfov>
}
    80004de4:	01813083          	ld	ra,24(sp)
    80004de8:	01013403          	ld	s0,16(sp)
    80004dec:	00813483          	ld	s1,8(sp)
    80004df0:	00013903          	ld	s2,0(sp)
    80004df4:	02010113          	addi	sp,sp,32
    80004df8:	00008067          	ret

0000000080004dfc <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004dfc:	fe010113          	addi	sp,sp,-32
    80004e00:	00113c23          	sd	ra,24(sp)
    80004e04:	00813823          	sd	s0,16(sp)
    80004e08:	00913423          	sd	s1,8(sp)
    80004e0c:	01213023          	sd	s2,0(sp)
    80004e10:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004e14:	00f00593          	li	a1,15
    80004e18:	00007797          	auipc	a5,0x7
    80004e1c:	b287b783          	ld	a5,-1240(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004e20:	0007b503          	ld	a0,0(a5)
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	d7c080e7          	jalr	-644(ra) # 80001ba0 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004e2c:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004e30:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004e34:	04400793          	li	a5,68
    80004e38:	0297c663          	blt	a5,s1,80004e64 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004e3c:	00000693          	li	a3,0
    80004e40:	00000613          	li	a2,0
    80004e44:	00a00593          	li	a1,10
    80004e48:	00004517          	auipc	a0,0x4
    80004e4c:	56050513          	addi	a0,a0,1376 # 800093a8 <CONSOLE_STATUS+0x398>
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	ec0080e7          	jalr	-320(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004e58:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004e5c:	0014849b          	addiw	s1,s1,1
    80004e60:	fd5ff06f          	j	80004e34 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004e64:	ffffd097          	auipc	ra,0xffffd
    80004e68:	118080e7          	jalr	280(ra) # 80001f7c <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004e6c:	00090513          	mv	a0,s2
    80004e70:	ffffd097          	auipc	ra,0xffffd
    80004e74:	370080e7          	jalr	880(ra) # 800021e0 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004e78:	ffffd097          	auipc	ra,0xffffd
    80004e7c:	104080e7          	jalr	260(ra) # 80001f7c <_Z22printSlabAllocatorInfov>
    80004e80:	01813083          	ld	ra,24(sp)
    80004e84:	01013403          	ld	s0,16(sp)
    80004e88:	00813483          	ld	s1,8(sp)
    80004e8c:	00013903          	ld	s2,0(sp)
    80004e90:	02010113          	addi	sp,sp,32
    80004e94:	00008067          	ret

0000000080004e98 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004e98:	ff010113          	addi	sp,sp,-16
    80004e9c:	00813423          	sd	s0,8(sp)
    80004ea0:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80004ea4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004ea8:	00053423          	sd	zero,8(a0)
    80004eac:	00053023          	sd	zero,0(a0)
}
    80004eb0:	00813403          	ld	s0,8(sp)
    80004eb4:	01010113          	addi	sp,sp,16
    80004eb8:	00008067          	ret

0000000080004ebc <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004ebc:	ff010113          	addi	sp,sp,-16
    80004ec0:	00813423          	sd	s0,8(sp)
    80004ec4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004ec8:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004ecc:	00053783          	ld	a5,0(a0)
    80004ed0:	00078e63          	beqz	a5,80004eec <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004ed4:	00853783          	ld	a5,8(a0)
    80004ed8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004edc:	00b53423          	sd	a1,8(a0)
    }
}
    80004ee0:	00813403          	ld	s0,8(sp)
    80004ee4:	01010113          	addi	sp,sp,16
    80004ee8:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004eec:	00b53423          	sd	a1,8(a0)
    80004ef0:	00b53023          	sd	a1,0(a0)
    80004ef4:	fedff06f          	j	80004ee0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004ef8 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004ef8:	ff010113          	addi	sp,sp,-16
    80004efc:	00113423          	sd	ra,8(sp)
    80004f00:	00813023          	sd	s0,0(sp)
    80004f04:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004f08:	00007797          	auipc	a5,0x7
    80004f0c:	a987b783          	ld	a5,-1384(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004f10:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004f14:	00200793          	li	a5,2
    80004f18:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004f1c:	00000097          	auipc	ra,0x0
    80004f20:	fa0080e7          	jalr	-96(ra) # 80004ebc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004f24:	ffffe097          	auipc	ra,0xffffe
    80004f28:	834080e7          	jalr	-1996(ra) # 80002758 <_ZN3PCB8dispatchEv>
}
    80004f2c:	00813083          	ld	ra,8(sp)
    80004f30:	00013403          	ld	s0,0(sp)
    80004f34:	01010113          	addi	sp,sp,16
    80004f38:	00008067          	ret

0000000080004f3c <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004f3c:	00007797          	auipc	a5,0x7
    80004f40:	a647b783          	ld	a5,-1436(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004f44:	0007b783          	ld	a5,0(a5)
    80004f48:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004f4c:	01052783          	lw	a5,16(a0)
    80004f50:	fff7879b          	addiw	a5,a5,-1
    80004f54:	00f52823          	sw	a5,16(a0)
    80004f58:	02079713          	slli	a4,a5,0x20
    80004f5c:	00074663          	bltz	a4,80004f68 <_ZN10KSemaphore4waitEv+0x2c>
}
    80004f60:	00000513          	li	a0,0
    80004f64:	00008067          	ret
{
    80004f68:	ff010113          	addi	sp,sp,-16
    80004f6c:	00113423          	sd	ra,8(sp)
    80004f70:	00813023          	sd	s0,0(sp)
    80004f74:	01010413          	addi	s0,sp,16
        block();
    80004f78:	00000097          	auipc	ra,0x0
    80004f7c:	f80080e7          	jalr	-128(ra) # 80004ef8 <_ZN10KSemaphore5blockEv>
}
    80004f80:	00000513          	li	a0,0
    80004f84:	00813083          	ld	ra,8(sp)
    80004f88:	00013403          	ld	s0,0(sp)
    80004f8c:	01010113          	addi	sp,sp,16
    80004f90:	00008067          	ret

0000000080004f94 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004f94:	ff010113          	addi	sp,sp,-16
    80004f98:	00813423          	sd	s0,8(sp)
    80004f9c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004fa0:	00053503          	ld	a0,0(a0)
    80004fa4:	00813403          	ld	s0,8(sp)
    80004fa8:	01010113          	addi	sp,sp,16
    80004fac:	00008067          	ret

0000000080004fb0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004fb0:	ff010113          	addi	sp,sp,-16
    80004fb4:	00813423          	sd	s0,8(sp)
    80004fb8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004fbc:	00053783          	ld	a5,0(a0)
    80004fc0:	00078c63          	beqz	a5,80004fd8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004fc4:	0087b703          	ld	a4,8(a5)
    80004fc8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004fcc:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004fd0:	00053783          	ld	a5,0(a0)
    80004fd4:	00078863          	beqz	a5,80004fe4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004fd8:	00813403          	ld	s0,8(sp)
    80004fdc:	01010113          	addi	sp,sp,16
    80004fe0:	00008067          	ret
        tailBlocked =0;
    80004fe4:	00053423          	sd	zero,8(a0)
    80004fe8:	ff1ff06f          	j	80004fd8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004fec <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004fec:	fe010113          	addi	sp,sp,-32
    80004ff0:	00113c23          	sd	ra,24(sp)
    80004ff4:	00813823          	sd	s0,16(sp)
    80004ff8:	00913423          	sd	s1,8(sp)
    80004ffc:	01213023          	sd	s2,0(sp)
    80005000:	02010413          	addi	s0,sp,32
    80005004:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80005008:	00090513          	mv	a0,s2
    8000500c:	00000097          	auipc	ra,0x0
    80005010:	f88080e7          	jalr	-120(ra) # 80004f94 <_ZN10KSemaphore15getFirstBlockedEv>
    80005014:	00050493          	mv	s1,a0
    80005018:	02050463          	beqz	a0,80005040 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    8000501c:	00090513          	mv	a0,s2
    80005020:	00000097          	auipc	ra,0x0
    80005024:	f90080e7          	jalr	-112(ra) # 80004fb0 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80005028:	00100793          	li	a5,1
    8000502c:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80005030:	00048513          	mv	a0,s1
    80005034:	fffff097          	auipc	ra,0xfffff
    80005038:	910080e7          	jalr	-1776(ra) # 80003944 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    8000503c:	fcdff06f          	j	80005008 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80005040:	01813083          	ld	ra,24(sp)
    80005044:	01013403          	ld	s0,16(sp)
    80005048:	00813483          	ld	s1,8(sp)
    8000504c:	00013903          	ld	s2,0(sp)
    80005050:	02010113          	addi	sp,sp,32
    80005054:	00008067          	ret

0000000080005058 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80005058:	fe010113          	addi	sp,sp,-32
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	00813823          	sd	s0,16(sp)
    80005064:	00913423          	sd	s1,8(sp)
    80005068:	01213023          	sd	s2,0(sp)
    8000506c:	02010413          	addi	s0,sp,32
    80005070:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005074:	00000097          	auipc	ra,0x0
    80005078:	f20080e7          	jalr	-224(ra) # 80004f94 <_ZN10KSemaphore15getFirstBlockedEv>
    8000507c:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80005080:	00090513          	mv	a0,s2
    80005084:	00000097          	auipc	ra,0x0
    80005088:	f2c080e7          	jalr	-212(ra) # 80004fb0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    8000508c:	00048863          	beqz	s1,8000509c <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80005090:	00048513          	mv	a0,s1
    80005094:	fffff097          	auipc	ra,0xfffff
    80005098:	8b0080e7          	jalr	-1872(ra) # 80003944 <_ZN9Scheduler3putEP3PCB>
    }
}
    8000509c:	01813083          	ld	ra,24(sp)
    800050a0:	01013403          	ld	s0,16(sp)
    800050a4:	00813483          	ld	s1,8(sp)
    800050a8:	00013903          	ld	s2,0(sp)
    800050ac:	02010113          	addi	sp,sp,32
    800050b0:	00008067          	ret

00000000800050b4 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800050b4:	01052783          	lw	a5,16(a0)
    800050b8:	0017879b          	addiw	a5,a5,1
    800050bc:	0007871b          	sext.w	a4,a5
    800050c0:	00f52823          	sw	a5,16(a0)
    800050c4:	00e05663          	blez	a4,800050d0 <_ZN10KSemaphore6signalEv+0x1c>
}
    800050c8:	00000513          	li	a0,0
    800050cc:	00008067          	ret
uint64 KSemaphore::signal() {
    800050d0:	ff010113          	addi	sp,sp,-16
    800050d4:	00113423          	sd	ra,8(sp)
    800050d8:	00813023          	sd	s0,0(sp)
    800050dc:	01010413          	addi	s0,sp,16
        unblock();
    800050e0:	00000097          	auipc	ra,0x0
    800050e4:	f78080e7          	jalr	-136(ra) # 80005058 <_ZN10KSemaphore7unblockEv>
}
    800050e8:	00000513          	li	a0,0
    800050ec:	00813083          	ld	ra,8(sp)
    800050f0:	00013403          	ld	s0,0(sp)
    800050f4:	01010113          	addi	sp,sp,16
    800050f8:	00008067          	ret

00000000800050fc <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800050fc:	ff010113          	addi	sp,sp,-16
    80005100:	00113423          	sd	ra,8(sp)
    80005104:	00813023          	sd	s0,0(sp)
    80005108:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    8000510c:	00007797          	auipc	a5,0x7
    80005110:	83c7b783          	ld	a5,-1988(a5) # 8000b948 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005114:	0007b503          	ld	a0,0(a5)
    80005118:	ffffd097          	auipc	ra,0xffffd
    8000511c:	ac0080e7          	jalr	-1344(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80005120:	00813083          	ld	ra,8(sp)
    80005124:	00013403          	ld	s0,0(sp)
    80005128:	01010113          	addi	sp,sp,16
    8000512c:	00008067          	ret

0000000080005130 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005130:	fd010113          	addi	sp,sp,-48
    80005134:	02113423          	sd	ra,40(sp)
    80005138:	02813023          	sd	s0,32(sp)
    8000513c:	00913c23          	sd	s1,24(sp)
    80005140:	01213823          	sd	s2,16(sp)
    80005144:	01313423          	sd	s3,8(sp)
    80005148:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    8000514c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80005150:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80005154:	01800513          	li	a0,24
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	fa4080e7          	jalr	-92(ra) # 800050fc <_ZN10KSemaphorenwEm>
    80005160:	00050493          	mv	s1,a0
    80005164:	0009859b          	sext.w	a1,s3
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	d30080e7          	jalr	-720(ra) # 80004e98 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005170:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80005174:	02048663          	beqz	s1,800051a0 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80005178:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000517c:	fffff097          	auipc	ra,0xfffff
    80005180:	3c8080e7          	jalr	968(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005184:	02813083          	ld	ra,40(sp)
    80005188:	02013403          	ld	s0,32(sp)
    8000518c:	01813483          	ld	s1,24(sp)
    80005190:	01013903          	ld	s2,16(sp)
    80005194:	00813983          	ld	s3,8(sp)
    80005198:	03010113          	addi	sp,sp,48
    8000519c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800051a0:	fff00513          	li	a0,-1
    800051a4:	fd9ff06f          	j	8000517c <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

00000000800051a8 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800051a8:	ff010113          	addi	sp,sp,-16
    800051ac:	00113423          	sd	ra,8(sp)
    800051b0:	00813023          	sd	s0,0(sp)
    800051b4:	01010413          	addi	s0,sp,16
    800051b8:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    800051bc:	00006797          	auipc	a5,0x6
    800051c0:	78c7b783          	ld	a5,1932(a5) # 8000b948 <_GLOBAL_OFFSET_TABLE_+0x20>
    800051c4:	0007b503          	ld	a0,0(a5)
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	bec080e7          	jalr	-1044(ra) # 80001db4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    800051d0:	00813083          	ld	ra,8(sp)
    800051d4:	00013403          	ld	s0,0(sp)
    800051d8:	01010113          	addi	sp,sp,16
    800051dc:	00008067          	ret

00000000800051e0 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800051e0:	ff010113          	addi	sp,sp,-16
    800051e4:	00113423          	sd	ra,8(sp)
    800051e8:	00813023          	sd	s0,0(sp)
    800051ec:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800051f0:	00058513          	mv	a0,a1
    kSem->wait();
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	d48080e7          	jalr	-696(ra) # 80004f3c <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800051fc:	00006797          	auipc	a5,0x6
    80005200:	7a47b783          	ld	a5,1956(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80005204:	0007b783          	ld	a5,0(a5)
    80005208:	0587c783          	lbu	a5,88(a5)
    8000520c:	02078063          	beqz	a5,8000522c <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80005210:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80005214:	fffff097          	auipc	ra,0xfffff
    80005218:	330080e7          	jalr	816(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000521c:	00813083          	ld	ra,8(sp)
    80005220:	00013403          	ld	s0,0(sp)
    80005224:	01010113          	addi	sp,sp,16
    80005228:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    8000522c:	00000513          	li	a0,0
    80005230:	fe5ff06f          	j	80005214 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005234 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005234:	ff010113          	addi	sp,sp,-16
    80005238:	00113423          	sd	ra,8(sp)
    8000523c:	00813023          	sd	s0,0(sp)
    80005240:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005244:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005248:	02050463          	beqz	a0,80005270 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    8000524c:	00000097          	auipc	ra,0x0
    80005250:	e68080e7          	jalr	-408(ra) # 800050b4 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80005254:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	2ec080e7          	jalr	748(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005260:	00813083          	ld	ra,8(sp)
    80005264:	00013403          	ld	s0,0(sp)
    80005268:	01010113          	addi	sp,sp,16
    8000526c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005270:	00100513          	li	a0,1
    80005274:	fe5ff06f          	j	80005258 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005278 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005278:	fe010113          	addi	sp,sp,-32
    8000527c:	00113c23          	sd	ra,24(sp)
    80005280:	00813823          	sd	s0,16(sp)
    80005284:	00913423          	sd	s1,8(sp)
    80005288:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000528c:	00058493          	mv	s1,a1
    delete kSem;
    80005290:	00048e63          	beqz	s1,800052ac <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80005294:	00048513          	mv	a0,s1
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	d54080e7          	jalr	-684(ra) # 80004fec <_ZN10KSemaphoreD1Ev>
    800052a0:	00048513          	mv	a0,s1
    800052a4:	00000097          	auipc	ra,0x0
    800052a8:	f04080e7          	jalr	-252(ra) # 800051a8 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800052ac:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800052b0:	fffff097          	auipc	ra,0xfffff
    800052b4:	294080e7          	jalr	660(ra) # 80004544 <_ZN5Riscv13w_a0_sscratchEv>
}
    800052b8:	01813083          	ld	ra,24(sp)
    800052bc:	01013403          	ld	s0,16(sp)
    800052c0:	00813483          	ld	s1,8(sp)
    800052c4:	02010113          	addi	sp,sp,32
    800052c8:	00008067          	ret

00000000800052cc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800052cc:	fe010113          	addi	sp,sp,-32
    800052d0:	00113c23          	sd	ra,24(sp)
    800052d4:	00813823          	sd	s0,16(sp)
    800052d8:	00913423          	sd	s1,8(sp)
    800052dc:	02010413          	addi	s0,sp,32
    800052e0:	00050493          	mv	s1,a0
    LOCK();
    800052e4:	00100613          	li	a2,1
    800052e8:	00000593          	li	a1,0
    800052ec:	0000a517          	auipc	a0,0xa
    800052f0:	7e450513          	addi	a0,a0,2020 # 8000fad0 <lockPrint>
    800052f4:	ffffc097          	auipc	ra,0xffffc
    800052f8:	f24080e7          	jalr	-220(ra) # 80001218 <copy_and_swap>
    800052fc:	fe0514e3          	bnez	a0,800052e4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005300:	0004c503          	lbu	a0,0(s1)
    80005304:	00050a63          	beqz	a0,80005318 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80005308:	ffffd097          	auipc	ra,0xffffd
    8000530c:	2f4080e7          	jalr	756(ra) # 800025fc <_Z4putcc>
        string++;
    80005310:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005314:	fedff06f          	j	80005300 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005318:	00000613          	li	a2,0
    8000531c:	00100593          	li	a1,1
    80005320:	0000a517          	auipc	a0,0xa
    80005324:	7b050513          	addi	a0,a0,1968 # 8000fad0 <lockPrint>
    80005328:	ffffc097          	auipc	ra,0xffffc
    8000532c:	ef0080e7          	jalr	-272(ra) # 80001218 <copy_and_swap>
    80005330:	fe0514e3          	bnez	a0,80005318 <_Z11printStringPKc+0x4c>
}
    80005334:	01813083          	ld	ra,24(sp)
    80005338:	01013403          	ld	s0,16(sp)
    8000533c:	00813483          	ld	s1,8(sp)
    80005340:	02010113          	addi	sp,sp,32
    80005344:	00008067          	ret

0000000080005348 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005348:	fd010113          	addi	sp,sp,-48
    8000534c:	02113423          	sd	ra,40(sp)
    80005350:	02813023          	sd	s0,32(sp)
    80005354:	00913c23          	sd	s1,24(sp)
    80005358:	01213823          	sd	s2,16(sp)
    8000535c:	01313423          	sd	s3,8(sp)
    80005360:	01413023          	sd	s4,0(sp)
    80005364:	03010413          	addi	s0,sp,48
    80005368:	00050993          	mv	s3,a0
    8000536c:	00058a13          	mv	s4,a1
    LOCK();
    80005370:	00100613          	li	a2,1
    80005374:	00000593          	li	a1,0
    80005378:	0000a517          	auipc	a0,0xa
    8000537c:	75850513          	addi	a0,a0,1880 # 8000fad0 <lockPrint>
    80005380:	ffffc097          	auipc	ra,0xffffc
    80005384:	e98080e7          	jalr	-360(ra) # 80001218 <copy_and_swap>
    80005388:	fe0514e3          	bnez	a0,80005370 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000538c:	00000913          	li	s2,0
    80005390:	00090493          	mv	s1,s2
    80005394:	0019091b          	addiw	s2,s2,1
    80005398:	03495a63          	bge	s2,s4,800053cc <_Z9getStringPci+0x84>
        cc = getc();
    8000539c:	ffffd097          	auipc	ra,0xffffd
    800053a0:	238080e7          	jalr	568(ra) # 800025d4 <_Z4getcv>
        if(cc < 1)
    800053a4:	02050463          	beqz	a0,800053cc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800053a8:	009984b3          	add	s1,s3,s1
    800053ac:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800053b0:	00a00793          	li	a5,10
    800053b4:	00f50a63          	beq	a0,a5,800053c8 <_Z9getStringPci+0x80>
    800053b8:	00d00793          	li	a5,13
    800053bc:	fcf51ae3          	bne	a0,a5,80005390 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800053c0:	00090493          	mv	s1,s2
    800053c4:	0080006f          	j	800053cc <_Z9getStringPci+0x84>
    800053c8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800053cc:	009984b3          	add	s1,s3,s1
    800053d0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800053d4:	00000613          	li	a2,0
    800053d8:	00100593          	li	a1,1
    800053dc:	0000a517          	auipc	a0,0xa
    800053e0:	6f450513          	addi	a0,a0,1780 # 8000fad0 <lockPrint>
    800053e4:	ffffc097          	auipc	ra,0xffffc
    800053e8:	e34080e7          	jalr	-460(ra) # 80001218 <copy_and_swap>
    800053ec:	fe0514e3          	bnez	a0,800053d4 <_Z9getStringPci+0x8c>
    return buf;
}
    800053f0:	00098513          	mv	a0,s3
    800053f4:	02813083          	ld	ra,40(sp)
    800053f8:	02013403          	ld	s0,32(sp)
    800053fc:	01813483          	ld	s1,24(sp)
    80005400:	01013903          	ld	s2,16(sp)
    80005404:	00813983          	ld	s3,8(sp)
    80005408:	00013a03          	ld	s4,0(sp)
    8000540c:	03010113          	addi	sp,sp,48
    80005410:	00008067          	ret

0000000080005414 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005414:	ff010113          	addi	sp,sp,-16
    80005418:	00813423          	sd	s0,8(sp)
    8000541c:	01010413          	addi	s0,sp,16
    80005420:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005424:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005428:	0006c603          	lbu	a2,0(a3)
    8000542c:	fd06071b          	addiw	a4,a2,-48
    80005430:	0ff77713          	andi	a4,a4,255
    80005434:	00900793          	li	a5,9
    80005438:	02e7e063          	bltu	a5,a4,80005458 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000543c:	0025179b          	slliw	a5,a0,0x2
    80005440:	00a787bb          	addw	a5,a5,a0
    80005444:	0017979b          	slliw	a5,a5,0x1
    80005448:	00168693          	addi	a3,a3,1
    8000544c:	00c787bb          	addw	a5,a5,a2
    80005450:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005454:	fd5ff06f          	j	80005428 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005458:	00813403          	ld	s0,8(sp)
    8000545c:	01010113          	addi	sp,sp,16
    80005460:	00008067          	ret

0000000080005464 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005464:	fc010113          	addi	sp,sp,-64
    80005468:	02113c23          	sd	ra,56(sp)
    8000546c:	02813823          	sd	s0,48(sp)
    80005470:	02913423          	sd	s1,40(sp)
    80005474:	03213023          	sd	s2,32(sp)
    80005478:	01313c23          	sd	s3,24(sp)
    8000547c:	04010413          	addi	s0,sp,64
    80005480:	00050493          	mv	s1,a0
    80005484:	00058913          	mv	s2,a1
    80005488:	00060993          	mv	s3,a2
    LOCK();
    8000548c:	00100613          	li	a2,1
    80005490:	00000593          	li	a1,0
    80005494:	0000a517          	auipc	a0,0xa
    80005498:	63c50513          	addi	a0,a0,1596 # 8000fad0 <lockPrint>
    8000549c:	ffffc097          	auipc	ra,0xffffc
    800054a0:	d7c080e7          	jalr	-644(ra) # 80001218 <copy_and_swap>
    800054a4:	fe0514e3          	bnez	a0,8000548c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800054a8:	00098463          	beqz	s3,800054b0 <_Z8printIntiii+0x4c>
    800054ac:	0804c463          	bltz	s1,80005534 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800054b0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800054b4:	00000593          	li	a1,0
    }

    i = 0;
    800054b8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800054bc:	0009079b          	sext.w	a5,s2
    800054c0:	0325773b          	remuw	a4,a0,s2
    800054c4:	00048613          	mv	a2,s1
    800054c8:	0014849b          	addiw	s1,s1,1
    800054cc:	02071693          	slli	a3,a4,0x20
    800054d0:	0206d693          	srli	a3,a3,0x20
    800054d4:	00006717          	auipc	a4,0x6
    800054d8:	43c70713          	addi	a4,a4,1084 # 8000b910 <digits>
    800054dc:	00d70733          	add	a4,a4,a3
    800054e0:	00074683          	lbu	a3,0(a4)
    800054e4:	fd040713          	addi	a4,s0,-48
    800054e8:	00c70733          	add	a4,a4,a2
    800054ec:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800054f0:	0005071b          	sext.w	a4,a0
    800054f4:	0325553b          	divuw	a0,a0,s2
    800054f8:	fcf772e3          	bgeu	a4,a5,800054bc <_Z8printIntiii+0x58>
    if(neg)
    800054fc:	00058c63          	beqz	a1,80005514 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005500:	fd040793          	addi	a5,s0,-48
    80005504:	009784b3          	add	s1,a5,s1
    80005508:	02d00793          	li	a5,45
    8000550c:	fef48823          	sb	a5,-16(s1)
    80005510:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005514:	fff4849b          	addiw	s1,s1,-1
    80005518:	0204c463          	bltz	s1,80005540 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000551c:	fd040793          	addi	a5,s0,-48
    80005520:	009787b3          	add	a5,a5,s1
    80005524:	ff07c503          	lbu	a0,-16(a5)
    80005528:	ffffd097          	auipc	ra,0xffffd
    8000552c:	0d4080e7          	jalr	212(ra) # 800025fc <_Z4putcc>
    80005530:	fe5ff06f          	j	80005514 <_Z8printIntiii+0xb0>
        x = -xx;
    80005534:	4090053b          	negw	a0,s1
        neg = 1;
    80005538:	00100593          	li	a1,1
        x = -xx;
    8000553c:	f7dff06f          	j	800054b8 <_Z8printIntiii+0x54>

    UNLOCK();
    80005540:	00000613          	li	a2,0
    80005544:	00100593          	li	a1,1
    80005548:	0000a517          	auipc	a0,0xa
    8000554c:	58850513          	addi	a0,a0,1416 # 8000fad0 <lockPrint>
    80005550:	ffffc097          	auipc	ra,0xffffc
    80005554:	cc8080e7          	jalr	-824(ra) # 80001218 <copy_and_swap>
    80005558:	fe0514e3          	bnez	a0,80005540 <_Z8printIntiii+0xdc>
}
    8000555c:	03813083          	ld	ra,56(sp)
    80005560:	03013403          	ld	s0,48(sp)
    80005564:	02813483          	ld	s1,40(sp)
    80005568:	02013903          	ld	s2,32(sp)
    8000556c:	01813983          	ld	s3,24(sp)
    80005570:	04010113          	addi	sp,sp,64
    80005574:	00008067          	ret

0000000080005578 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005578:	fd010113          	addi	sp,sp,-48
    8000557c:	02113423          	sd	ra,40(sp)
    80005580:	02813023          	sd	s0,32(sp)
    80005584:	00913c23          	sd	s1,24(sp)
    80005588:	01213823          	sd	s2,16(sp)
    8000558c:	01313423          	sd	s3,8(sp)
    80005590:	03010413          	addi	s0,sp,48
    80005594:	00050493          	mv	s1,a0
    80005598:	00058913          	mv	s2,a1
    8000559c:	0015879b          	addiw	a5,a1,1
    800055a0:	0007851b          	sext.w	a0,a5
    800055a4:	00f4a023          	sw	a5,0(s1)
    800055a8:	0004a823          	sw	zero,16(s1)
    800055ac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800055b0:	00251513          	slli	a0,a0,0x2
    800055b4:	ffffd097          	auipc	ra,0xffffd
    800055b8:	d68080e7          	jalr	-664(ra) # 8000231c <_Z9mem_allocm>
    800055bc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800055c0:	01000513          	li	a0,16
    800055c4:	fffff097          	auipc	ra,0xfffff
    800055c8:	804080e7          	jalr	-2044(ra) # 80003dc8 <_Znwm>
    800055cc:	00050993          	mv	s3,a0
    800055d0:	00000593          	li	a1,0
    800055d4:	fffff097          	auipc	ra,0xfffff
    800055d8:	a48080e7          	jalr	-1464(ra) # 8000401c <_ZN9SemaphoreC1Ej>
    800055dc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800055e0:	01000513          	li	a0,16
    800055e4:	ffffe097          	auipc	ra,0xffffe
    800055e8:	7e4080e7          	jalr	2020(ra) # 80003dc8 <_Znwm>
    800055ec:	00050993          	mv	s3,a0
    800055f0:	00090593          	mv	a1,s2
    800055f4:	fffff097          	auipc	ra,0xfffff
    800055f8:	a28080e7          	jalr	-1496(ra) # 8000401c <_ZN9SemaphoreC1Ej>
    800055fc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005600:	01000513          	li	a0,16
    80005604:	ffffe097          	auipc	ra,0xffffe
    80005608:	7c4080e7          	jalr	1988(ra) # 80003dc8 <_Znwm>
    8000560c:	00050913          	mv	s2,a0
    80005610:	00100593          	li	a1,1
    80005614:	fffff097          	auipc	ra,0xfffff
    80005618:	a08080e7          	jalr	-1528(ra) # 8000401c <_ZN9SemaphoreC1Ej>
    8000561c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005620:	01000513          	li	a0,16
    80005624:	ffffe097          	auipc	ra,0xffffe
    80005628:	7a4080e7          	jalr	1956(ra) # 80003dc8 <_Znwm>
    8000562c:	00050913          	mv	s2,a0
    80005630:	00100593          	li	a1,1
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	9e8080e7          	jalr	-1560(ra) # 8000401c <_ZN9SemaphoreC1Ej>
    8000563c:	0324b823          	sd	s2,48(s1)
}
    80005640:	02813083          	ld	ra,40(sp)
    80005644:	02013403          	ld	s0,32(sp)
    80005648:	01813483          	ld	s1,24(sp)
    8000564c:	01013903          	ld	s2,16(sp)
    80005650:	00813983          	ld	s3,8(sp)
    80005654:	03010113          	addi	sp,sp,48
    80005658:	00008067          	ret
    8000565c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005660:	00098513          	mv	a0,s3
    80005664:	ffffe097          	auipc	ra,0xffffe
    80005668:	78c080e7          	jalr	1932(ra) # 80003df0 <_ZdlPv>
    8000566c:	00048513          	mv	a0,s1
    80005670:	0000b097          	auipc	ra,0xb
    80005674:	538080e7          	jalr	1336(ra) # 80010ba8 <_Unwind_Resume>
    80005678:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000567c:	00098513          	mv	a0,s3
    80005680:	ffffe097          	auipc	ra,0xffffe
    80005684:	770080e7          	jalr	1904(ra) # 80003df0 <_ZdlPv>
    80005688:	00048513          	mv	a0,s1
    8000568c:	0000b097          	auipc	ra,0xb
    80005690:	51c080e7          	jalr	1308(ra) # 80010ba8 <_Unwind_Resume>
    80005694:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005698:	00090513          	mv	a0,s2
    8000569c:	ffffe097          	auipc	ra,0xffffe
    800056a0:	754080e7          	jalr	1876(ra) # 80003df0 <_ZdlPv>
    800056a4:	00048513          	mv	a0,s1
    800056a8:	0000b097          	auipc	ra,0xb
    800056ac:	500080e7          	jalr	1280(ra) # 80010ba8 <_Unwind_Resume>
    800056b0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800056b4:	00090513          	mv	a0,s2
    800056b8:	ffffe097          	auipc	ra,0xffffe
    800056bc:	738080e7          	jalr	1848(ra) # 80003df0 <_ZdlPv>
    800056c0:	00048513          	mv	a0,s1
    800056c4:	0000b097          	auipc	ra,0xb
    800056c8:	4e4080e7          	jalr	1252(ra) # 80010ba8 <_Unwind_Resume>

00000000800056cc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800056cc:	fe010113          	addi	sp,sp,-32
    800056d0:	00113c23          	sd	ra,24(sp)
    800056d4:	00813823          	sd	s0,16(sp)
    800056d8:	00913423          	sd	s1,8(sp)
    800056dc:	01213023          	sd	s2,0(sp)
    800056e0:	02010413          	addi	s0,sp,32
    800056e4:	00050493          	mv	s1,a0
    800056e8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800056ec:	01853503          	ld	a0,24(a0)
    800056f0:	fffff097          	auipc	ra,0xfffff
    800056f4:	8f4080e7          	jalr	-1804(ra) # 80003fe4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800056f8:	0304b503          	ld	a0,48(s1)
    800056fc:	fffff097          	auipc	ra,0xfffff
    80005700:	8e8080e7          	jalr	-1816(ra) # 80003fe4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005704:	0084b783          	ld	a5,8(s1)
    80005708:	0144a703          	lw	a4,20(s1)
    8000570c:	00271713          	slli	a4,a4,0x2
    80005710:	00e787b3          	add	a5,a5,a4
    80005714:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005718:	0144a783          	lw	a5,20(s1)
    8000571c:	0017879b          	addiw	a5,a5,1
    80005720:	0004a703          	lw	a4,0(s1)
    80005724:	02e7e7bb          	remw	a5,a5,a4
    80005728:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000572c:	0304b503          	ld	a0,48(s1)
    80005730:	fffff097          	auipc	ra,0xfffff
    80005734:	938080e7          	jalr	-1736(ra) # 80004068 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005738:	0204b503          	ld	a0,32(s1)
    8000573c:	fffff097          	auipc	ra,0xfffff
    80005740:	92c080e7          	jalr	-1748(ra) # 80004068 <_ZN9Semaphore6signalEv>

}
    80005744:	01813083          	ld	ra,24(sp)
    80005748:	01013403          	ld	s0,16(sp)
    8000574c:	00813483          	ld	s1,8(sp)
    80005750:	00013903          	ld	s2,0(sp)
    80005754:	02010113          	addi	sp,sp,32
    80005758:	00008067          	ret

000000008000575c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000575c:	fe010113          	addi	sp,sp,-32
    80005760:	00113c23          	sd	ra,24(sp)
    80005764:	00813823          	sd	s0,16(sp)
    80005768:	00913423          	sd	s1,8(sp)
    8000576c:	01213023          	sd	s2,0(sp)
    80005770:	02010413          	addi	s0,sp,32
    80005774:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005778:	02053503          	ld	a0,32(a0)
    8000577c:	fffff097          	auipc	ra,0xfffff
    80005780:	868080e7          	jalr	-1944(ra) # 80003fe4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005784:	0284b503          	ld	a0,40(s1)
    80005788:	fffff097          	auipc	ra,0xfffff
    8000578c:	85c080e7          	jalr	-1956(ra) # 80003fe4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005790:	0084b703          	ld	a4,8(s1)
    80005794:	0104a783          	lw	a5,16(s1)
    80005798:	00279693          	slli	a3,a5,0x2
    8000579c:	00d70733          	add	a4,a4,a3
    800057a0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800057a4:	0017879b          	addiw	a5,a5,1
    800057a8:	0004a703          	lw	a4,0(s1)
    800057ac:	02e7e7bb          	remw	a5,a5,a4
    800057b0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800057b4:	0284b503          	ld	a0,40(s1)
    800057b8:	fffff097          	auipc	ra,0xfffff
    800057bc:	8b0080e7          	jalr	-1872(ra) # 80004068 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800057c0:	0184b503          	ld	a0,24(s1)
    800057c4:	fffff097          	auipc	ra,0xfffff
    800057c8:	8a4080e7          	jalr	-1884(ra) # 80004068 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057cc:	00090513          	mv	a0,s2
    800057d0:	01813083          	ld	ra,24(sp)
    800057d4:	01013403          	ld	s0,16(sp)
    800057d8:	00813483          	ld	s1,8(sp)
    800057dc:	00013903          	ld	s2,0(sp)
    800057e0:	02010113          	addi	sp,sp,32
    800057e4:	00008067          	ret

00000000800057e8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800057e8:	fe010113          	addi	sp,sp,-32
    800057ec:	00113c23          	sd	ra,24(sp)
    800057f0:	00813823          	sd	s0,16(sp)
    800057f4:	00913423          	sd	s1,8(sp)
    800057f8:	01213023          	sd	s2,0(sp)
    800057fc:	02010413          	addi	s0,sp,32
    80005800:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005804:	02853503          	ld	a0,40(a0)
    80005808:	ffffe097          	auipc	ra,0xffffe
    8000580c:	7dc080e7          	jalr	2012(ra) # 80003fe4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005810:	0304b503          	ld	a0,48(s1)
    80005814:	ffffe097          	auipc	ra,0xffffe
    80005818:	7d0080e7          	jalr	2000(ra) # 80003fe4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000581c:	0144a783          	lw	a5,20(s1)
    80005820:	0104a903          	lw	s2,16(s1)
    80005824:	0327ce63          	blt	a5,s2,80005860 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005828:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000582c:	0304b503          	ld	a0,48(s1)
    80005830:	fffff097          	auipc	ra,0xfffff
    80005834:	838080e7          	jalr	-1992(ra) # 80004068 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005838:	0284b503          	ld	a0,40(s1)
    8000583c:	fffff097          	auipc	ra,0xfffff
    80005840:	82c080e7          	jalr	-2004(ra) # 80004068 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005844:	00090513          	mv	a0,s2
    80005848:	01813083          	ld	ra,24(sp)
    8000584c:	01013403          	ld	s0,16(sp)
    80005850:	00813483          	ld	s1,8(sp)
    80005854:	00013903          	ld	s2,0(sp)
    80005858:	02010113          	addi	sp,sp,32
    8000585c:	00008067          	ret
        ret = cap - head + tail;
    80005860:	0004a703          	lw	a4,0(s1)
    80005864:	4127093b          	subw	s2,a4,s2
    80005868:	00f9093b          	addw	s2,s2,a5
    8000586c:	fc1ff06f          	j	8000582c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005870 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005870:	fe010113          	addi	sp,sp,-32
    80005874:	00113c23          	sd	ra,24(sp)
    80005878:	00813823          	sd	s0,16(sp)
    8000587c:	00913423          	sd	s1,8(sp)
    80005880:	02010413          	addi	s0,sp,32
    80005884:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005888:	00a00513          	li	a0,10
    8000588c:	fffff097          	auipc	ra,0xfffff
    80005890:	83c080e7          	jalr	-1988(ra) # 800040c8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005894:	00004517          	auipc	a0,0x4
    80005898:	b4450513          	addi	a0,a0,-1212 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	a30080e7          	jalr	-1488(ra) # 800052cc <_Z11printStringPKc>
    while (getCnt()) {
    800058a4:	00048513          	mv	a0,s1
    800058a8:	00000097          	auipc	ra,0x0
    800058ac:	f40080e7          	jalr	-192(ra) # 800057e8 <_ZN9BufferCPP6getCntEv>
    800058b0:	02050c63          	beqz	a0,800058e8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800058b4:	0084b783          	ld	a5,8(s1)
    800058b8:	0104a703          	lw	a4,16(s1)
    800058bc:	00271713          	slli	a4,a4,0x2
    800058c0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800058c4:	0007c503          	lbu	a0,0(a5)
    800058c8:	fffff097          	auipc	ra,0xfffff
    800058cc:	800080e7          	jalr	-2048(ra) # 800040c8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800058d0:	0104a783          	lw	a5,16(s1)
    800058d4:	0017879b          	addiw	a5,a5,1
    800058d8:	0004a703          	lw	a4,0(s1)
    800058dc:	02e7e7bb          	remw	a5,a5,a4
    800058e0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800058e4:	fc1ff06f          	j	800058a4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800058e8:	02100513          	li	a0,33
    800058ec:	ffffe097          	auipc	ra,0xffffe
    800058f0:	7dc080e7          	jalr	2012(ra) # 800040c8 <_ZN7Console4putcEc>
    Console::putc('\n');
    800058f4:	00a00513          	li	a0,10
    800058f8:	ffffe097          	auipc	ra,0xffffe
    800058fc:	7d0080e7          	jalr	2000(ra) # 800040c8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005900:	0084b503          	ld	a0,8(s1)
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	a48080e7          	jalr	-1464(ra) # 8000234c <_Z8mem_freePv>
    delete itemAvailable;
    8000590c:	0204b503          	ld	a0,32(s1)
    80005910:	00050863          	beqz	a0,80005920 <_ZN9BufferCPPD1Ev+0xb0>
    80005914:	00053783          	ld	a5,0(a0)
    80005918:	0087b783          	ld	a5,8(a5)
    8000591c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005920:	0184b503          	ld	a0,24(s1)
    80005924:	00050863          	beqz	a0,80005934 <_ZN9BufferCPPD1Ev+0xc4>
    80005928:	00053783          	ld	a5,0(a0)
    8000592c:	0087b783          	ld	a5,8(a5)
    80005930:	000780e7          	jalr	a5
    delete mutexTail;
    80005934:	0304b503          	ld	a0,48(s1)
    80005938:	00050863          	beqz	a0,80005948 <_ZN9BufferCPPD1Ev+0xd8>
    8000593c:	00053783          	ld	a5,0(a0)
    80005940:	0087b783          	ld	a5,8(a5)
    80005944:	000780e7          	jalr	a5
    delete mutexHead;
    80005948:	0284b503          	ld	a0,40(s1)
    8000594c:	00050863          	beqz	a0,8000595c <_ZN9BufferCPPD1Ev+0xec>
    80005950:	00053783          	ld	a5,0(a0)
    80005954:	0087b783          	ld	a5,8(a5)
    80005958:	000780e7          	jalr	a5
}
    8000595c:	01813083          	ld	ra,24(sp)
    80005960:	01013403          	ld	s0,16(sp)
    80005964:	00813483          	ld	s1,8(sp)
    80005968:	02010113          	addi	sp,sp,32
    8000596c:	00008067          	ret

0000000080005970 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005970:	fe010113          	addi	sp,sp,-32
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	00813823          	sd	s0,16(sp)
    8000597c:	00913423          	sd	s1,8(sp)
    80005980:	01213023          	sd	s2,0(sp)
    80005984:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005988:	00000913          	li	s2,0
    8000598c:	0380006f          	j	800059c4 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005990:	ffffd097          	auipc	ra,0xffffd
    80005994:	a68080e7          	jalr	-1432(ra) # 800023f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005998:	00148493          	addi	s1,s1,1
    8000599c:	000027b7          	lui	a5,0x2
    800059a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800059a4:	0097ee63          	bltu	a5,s1,800059c0 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800059a8:	00000713          	li	a4,0
    800059ac:	000077b7          	lui	a5,0x7
    800059b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800059b4:	fce7eee3          	bltu	a5,a4,80005990 <_Z11workerBodyAPv+0x20>
    800059b8:	00170713          	addi	a4,a4,1
    800059bc:	ff1ff06f          	j	800059ac <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800059c0:	00190913          	addi	s2,s2,1
    800059c4:	00900793          	li	a5,9
    800059c8:	0527e063          	bltu	a5,s2,80005a08 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800059cc:	00004517          	auipc	a0,0x4
    800059d0:	a2450513          	addi	a0,a0,-1500 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800059d4:	00000097          	auipc	ra,0x0
    800059d8:	8f8080e7          	jalr	-1800(ra) # 800052cc <_Z11printStringPKc>
    800059dc:	00000613          	li	a2,0
    800059e0:	00a00593          	li	a1,10
    800059e4:	0009051b          	sext.w	a0,s2
    800059e8:	00000097          	auipc	ra,0x0
    800059ec:	a7c080e7          	jalr	-1412(ra) # 80005464 <_Z8printIntiii>
    800059f0:	00004517          	auipc	a0,0x4
    800059f4:	c0850513          	addi	a0,a0,-1016 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	8d4080e7          	jalr	-1836(ra) # 800052cc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005a00:	00000493          	li	s1,0
    80005a04:	f99ff06f          	j	8000599c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005a08:	00004517          	auipc	a0,0x4
    80005a0c:	9f050513          	addi	a0,a0,-1552 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	8bc080e7          	jalr	-1860(ra) # 800052cc <_Z11printStringPKc>
    finishedA = true;
    80005a18:	00100793          	li	a5,1
    80005a1c:	0000a717          	auipc	a4,0xa
    80005a20:	0af70e23          	sb	a5,188(a4) # 8000fad8 <finishedA>
}
    80005a24:	01813083          	ld	ra,24(sp)
    80005a28:	01013403          	ld	s0,16(sp)
    80005a2c:	00813483          	ld	s1,8(sp)
    80005a30:	00013903          	ld	s2,0(sp)
    80005a34:	02010113          	addi	sp,sp,32
    80005a38:	00008067          	ret

0000000080005a3c <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005a3c:	fe010113          	addi	sp,sp,-32
    80005a40:	00113c23          	sd	ra,24(sp)
    80005a44:	00813823          	sd	s0,16(sp)
    80005a48:	00913423          	sd	s1,8(sp)
    80005a4c:	01213023          	sd	s2,0(sp)
    80005a50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005a54:	00000913          	li	s2,0
    80005a58:	0380006f          	j	80005a90 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005a5c:	ffffd097          	auipc	ra,0xffffd
    80005a60:	99c080e7          	jalr	-1636(ra) # 800023f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005a64:	00148493          	addi	s1,s1,1
    80005a68:	000027b7          	lui	a5,0x2
    80005a6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005a70:	0097ee63          	bltu	a5,s1,80005a8c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a74:	00000713          	li	a4,0
    80005a78:	000077b7          	lui	a5,0x7
    80005a7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a80:	fce7eee3          	bltu	a5,a4,80005a5c <_Z11workerBodyBPv+0x20>
    80005a84:	00170713          	addi	a4,a4,1
    80005a88:	ff1ff06f          	j	80005a78 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005a8c:	00190913          	addi	s2,s2,1
    80005a90:	00f00793          	li	a5,15
    80005a94:	0527e063          	bltu	a5,s2,80005ad4 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005a98:	00004517          	auipc	a0,0x4
    80005a9c:	97050513          	addi	a0,a0,-1680 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005aa0:	00000097          	auipc	ra,0x0
    80005aa4:	82c080e7          	jalr	-2004(ra) # 800052cc <_Z11printStringPKc>
    80005aa8:	00000613          	li	a2,0
    80005aac:	00a00593          	li	a1,10
    80005ab0:	0009051b          	sext.w	a0,s2
    80005ab4:	00000097          	auipc	ra,0x0
    80005ab8:	9b0080e7          	jalr	-1616(ra) # 80005464 <_Z8printIntiii>
    80005abc:	00004517          	auipc	a0,0x4
    80005ac0:	b3c50513          	addi	a0,a0,-1220 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005ac4:	00000097          	auipc	ra,0x0
    80005ac8:	808080e7          	jalr	-2040(ra) # 800052cc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005acc:	00000493          	li	s1,0
    80005ad0:	f99ff06f          	j	80005a68 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005ad4:	ffffd097          	auipc	ra,0xffffd
    80005ad8:	924080e7          	jalr	-1756(ra) # 800023f8 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80005adc:	00004517          	auipc	a0,0x4
    80005ae0:	93450513          	addi	a0,a0,-1740 # 80009410 <CONSOLE_STATUS+0x400>
    80005ae4:	fffff097          	auipc	ra,0xfffff
    80005ae8:	7e8080e7          	jalr	2024(ra) # 800052cc <_Z11printStringPKc>
    finishedB = true;
    80005aec:	00100793          	li	a5,1
    80005af0:	0000a717          	auipc	a4,0xa
    80005af4:	fef704a3          	sb	a5,-23(a4) # 8000fad9 <finishedB>
}
    80005af8:	01813083          	ld	ra,24(sp)
    80005afc:	01013403          	ld	s0,16(sp)
    80005b00:	00813483          	ld	s1,8(sp)
    80005b04:	00013903          	ld	s2,0(sp)
    80005b08:	02010113          	addi	sp,sp,32
    80005b0c:	00008067          	ret

0000000080005b10 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80005b10:	fe010113          	addi	sp,sp,-32
    80005b14:	00113c23          	sd	ra,24(sp)
    80005b18:	00813823          	sd	s0,16(sp)
    80005b1c:	00913423          	sd	s1,8(sp)
    80005b20:	01213023          	sd	s2,0(sp)
    80005b24:	02010413          	addi	s0,sp,32
    80005b28:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b2c:	00100793          	li	a5,1
    80005b30:	02a7f863          	bgeu	a5,a0,80005b60 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b34:	00a00793          	li	a5,10
    80005b38:	02f577b3          	remu	a5,a0,a5
    80005b3c:	02078e63          	beqz	a5,80005b78 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b40:	fff48513          	addi	a0,s1,-1
    80005b44:	00000097          	auipc	ra,0x0
    80005b48:	fcc080e7          	jalr	-52(ra) # 80005b10 <_Z9fibonaccim>
    80005b4c:	00050913          	mv	s2,a0
    80005b50:	ffe48513          	addi	a0,s1,-2
    80005b54:	00000097          	auipc	ra,0x0
    80005b58:	fbc080e7          	jalr	-68(ra) # 80005b10 <_Z9fibonaccim>
    80005b5c:	00a90533          	add	a0,s2,a0
}
    80005b60:	01813083          	ld	ra,24(sp)
    80005b64:	01013403          	ld	s0,16(sp)
    80005b68:	00813483          	ld	s1,8(sp)
    80005b6c:	00013903          	ld	s2,0(sp)
    80005b70:	02010113          	addi	sp,sp,32
    80005b74:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b78:	ffffd097          	auipc	ra,0xffffd
    80005b7c:	880080e7          	jalr	-1920(ra) # 800023f8 <_Z15thread_dispatchv>
    80005b80:	fc1ff06f          	j	80005b40 <_Z9fibonaccim+0x30>

0000000080005b84 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005b84:	fe010113          	addi	sp,sp,-32
    80005b88:	00113c23          	sd	ra,24(sp)
    80005b8c:	00813823          	sd	s0,16(sp)
    80005b90:	00913423          	sd	s1,8(sp)
    80005b94:	01213023          	sd	s2,0(sp)
    80005b98:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b9c:	00000493          	li	s1,0
    80005ba0:	0400006f          	j	80005be0 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005ba4:	00004517          	auipc	a0,0x4
    80005ba8:	87c50513          	addi	a0,a0,-1924 # 80009420 <CONSOLE_STATUS+0x410>
    80005bac:	fffff097          	auipc	ra,0xfffff
    80005bb0:	720080e7          	jalr	1824(ra) # 800052cc <_Z11printStringPKc>
    80005bb4:	00000613          	li	a2,0
    80005bb8:	00a00593          	li	a1,10
    80005bbc:	00048513          	mv	a0,s1
    80005bc0:	00000097          	auipc	ra,0x0
    80005bc4:	8a4080e7          	jalr	-1884(ra) # 80005464 <_Z8printIntiii>
    80005bc8:	00004517          	auipc	a0,0x4
    80005bcc:	a3050513          	addi	a0,a0,-1488 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005bd0:	fffff097          	auipc	ra,0xfffff
    80005bd4:	6fc080e7          	jalr	1788(ra) # 800052cc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005bd8:	0014849b          	addiw	s1,s1,1
    80005bdc:	0ff4f493          	andi	s1,s1,255
    80005be0:	00200793          	li	a5,2
    80005be4:	fc97f0e3          	bgeu	a5,s1,80005ba4 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005be8:	00004517          	auipc	a0,0x4
    80005bec:	84050513          	addi	a0,a0,-1984 # 80009428 <CONSOLE_STATUS+0x418>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	6dc080e7          	jalr	1756(ra) # 800052cc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005bf8:	00700313          	li	t1,7
    thread_dispatch();
    80005bfc:	ffffc097          	auipc	ra,0xffffc
    80005c00:	7fc080e7          	jalr	2044(ra) # 800023f8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005c04:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005c08:	00004517          	auipc	a0,0x4
    80005c0c:	83050513          	addi	a0,a0,-2000 # 80009438 <CONSOLE_STATUS+0x428>
    80005c10:	fffff097          	auipc	ra,0xfffff
    80005c14:	6bc080e7          	jalr	1724(ra) # 800052cc <_Z11printStringPKc>
    80005c18:	00000613          	li	a2,0
    80005c1c:	00a00593          	li	a1,10
    80005c20:	0009051b          	sext.w	a0,s2
    80005c24:	00000097          	auipc	ra,0x0
    80005c28:	840080e7          	jalr	-1984(ra) # 80005464 <_Z8printIntiii>
    80005c2c:	00004517          	auipc	a0,0x4
    80005c30:	9cc50513          	addi	a0,a0,-1588 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	698080e7          	jalr	1688(ra) # 800052cc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005c3c:	00c00513          	li	a0,12
    80005c40:	00000097          	auipc	ra,0x0
    80005c44:	ed0080e7          	jalr	-304(ra) # 80005b10 <_Z9fibonaccim>
    80005c48:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005c4c:	00003517          	auipc	a0,0x3
    80005c50:	7f450513          	addi	a0,a0,2036 # 80009440 <CONSOLE_STATUS+0x430>
    80005c54:	fffff097          	auipc	ra,0xfffff
    80005c58:	678080e7          	jalr	1656(ra) # 800052cc <_Z11printStringPKc>
    80005c5c:	00000613          	li	a2,0
    80005c60:	00a00593          	li	a1,10
    80005c64:	0009051b          	sext.w	a0,s2
    80005c68:	fffff097          	auipc	ra,0xfffff
    80005c6c:	7fc080e7          	jalr	2044(ra) # 80005464 <_Z8printIntiii>
    80005c70:	00004517          	auipc	a0,0x4
    80005c74:	98850513          	addi	a0,a0,-1656 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005c78:	fffff097          	auipc	ra,0xfffff
    80005c7c:	654080e7          	jalr	1620(ra) # 800052cc <_Z11printStringPKc>
    80005c80:	0400006f          	j	80005cc0 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005c84:	00003517          	auipc	a0,0x3
    80005c88:	79c50513          	addi	a0,a0,1948 # 80009420 <CONSOLE_STATUS+0x410>
    80005c8c:	fffff097          	auipc	ra,0xfffff
    80005c90:	640080e7          	jalr	1600(ra) # 800052cc <_Z11printStringPKc>
    80005c94:	00000613          	li	a2,0
    80005c98:	00a00593          	li	a1,10
    80005c9c:	00048513          	mv	a0,s1
    80005ca0:	fffff097          	auipc	ra,0xfffff
    80005ca4:	7c4080e7          	jalr	1988(ra) # 80005464 <_Z8printIntiii>
    80005ca8:	00004517          	auipc	a0,0x4
    80005cac:	95050513          	addi	a0,a0,-1712 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005cb0:	fffff097          	auipc	ra,0xfffff
    80005cb4:	61c080e7          	jalr	1564(ra) # 800052cc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005cb8:	0014849b          	addiw	s1,s1,1
    80005cbc:	0ff4f493          	andi	s1,s1,255
    80005cc0:	00500793          	li	a5,5
    80005cc4:	fc97f0e3          	bgeu	a5,s1,80005c84 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005cc8:	ffffc097          	auipc	ra,0xffffc
    80005ccc:	730080e7          	jalr	1840(ra) # 800023f8 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80005cd0:	00003517          	auipc	a0,0x3
    80005cd4:	72850513          	addi	a0,a0,1832 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005cd8:	fffff097          	auipc	ra,0xfffff
    80005cdc:	5f4080e7          	jalr	1524(ra) # 800052cc <_Z11printStringPKc>
    finishedC = true;
    80005ce0:	00100793          	li	a5,1
    80005ce4:	0000a717          	auipc	a4,0xa
    80005ce8:	def70b23          	sb	a5,-522(a4) # 8000fada <finishedC>
}
    80005cec:	01813083          	ld	ra,24(sp)
    80005cf0:	01013403          	ld	s0,16(sp)
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	00013903          	ld	s2,0(sp)
    80005cfc:	02010113          	addi	sp,sp,32
    80005d00:	00008067          	ret

0000000080005d04 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005d04:	fe010113          	addi	sp,sp,-32
    80005d08:	00113c23          	sd	ra,24(sp)
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	01213023          	sd	s2,0(sp)
    80005d18:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005d1c:	00a00493          	li	s1,10
    80005d20:	0400006f          	j	80005d60 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005d24:	00003517          	auipc	a0,0x3
    80005d28:	72c50513          	addi	a0,a0,1836 # 80009450 <CONSOLE_STATUS+0x440>
    80005d2c:	fffff097          	auipc	ra,0xfffff
    80005d30:	5a0080e7          	jalr	1440(ra) # 800052cc <_Z11printStringPKc>
    80005d34:	00000613          	li	a2,0
    80005d38:	00a00593          	li	a1,10
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	fffff097          	auipc	ra,0xfffff
    80005d44:	724080e7          	jalr	1828(ra) # 80005464 <_Z8printIntiii>
    80005d48:	00004517          	auipc	a0,0x4
    80005d4c:	8b050513          	addi	a0,a0,-1872 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005d50:	fffff097          	auipc	ra,0xfffff
    80005d54:	57c080e7          	jalr	1404(ra) # 800052cc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005d58:	0014849b          	addiw	s1,s1,1
    80005d5c:	0ff4f493          	andi	s1,s1,255
    80005d60:	00c00793          	li	a5,12
    80005d64:	fc97f0e3          	bgeu	a5,s1,80005d24 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005d68:	00003517          	auipc	a0,0x3
    80005d6c:	6f050513          	addi	a0,a0,1776 # 80009458 <CONSOLE_STATUS+0x448>
    80005d70:	fffff097          	auipc	ra,0xfffff
    80005d74:	55c080e7          	jalr	1372(ra) # 800052cc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005d78:	00500313          	li	t1,5
    thread_dispatch();
    80005d7c:	ffffc097          	auipc	ra,0xffffc
    80005d80:	67c080e7          	jalr	1660(ra) # 800023f8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005d84:	01000513          	li	a0,16
    80005d88:	00000097          	auipc	ra,0x0
    80005d8c:	d88080e7          	jalr	-632(ra) # 80005b10 <_Z9fibonaccim>
    80005d90:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005d94:	00003517          	auipc	a0,0x3
    80005d98:	6d450513          	addi	a0,a0,1748 # 80009468 <CONSOLE_STATUS+0x458>
    80005d9c:	fffff097          	auipc	ra,0xfffff
    80005da0:	530080e7          	jalr	1328(ra) # 800052cc <_Z11printStringPKc>
    80005da4:	00000613          	li	a2,0
    80005da8:	00a00593          	li	a1,10
    80005dac:	0009051b          	sext.w	a0,s2
    80005db0:	fffff097          	auipc	ra,0xfffff
    80005db4:	6b4080e7          	jalr	1716(ra) # 80005464 <_Z8printIntiii>
    80005db8:	00004517          	auipc	a0,0x4
    80005dbc:	84050513          	addi	a0,a0,-1984 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005dc0:	fffff097          	auipc	ra,0xfffff
    80005dc4:	50c080e7          	jalr	1292(ra) # 800052cc <_Z11printStringPKc>
    80005dc8:	0400006f          	j	80005e08 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005dcc:	00003517          	auipc	a0,0x3
    80005dd0:	68450513          	addi	a0,a0,1668 # 80009450 <CONSOLE_STATUS+0x440>
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	4f8080e7          	jalr	1272(ra) # 800052cc <_Z11printStringPKc>
    80005ddc:	00000613          	li	a2,0
    80005de0:	00a00593          	li	a1,10
    80005de4:	00048513          	mv	a0,s1
    80005de8:	fffff097          	auipc	ra,0xfffff
    80005dec:	67c080e7          	jalr	1660(ra) # 80005464 <_Z8printIntiii>
    80005df0:	00004517          	auipc	a0,0x4
    80005df4:	80850513          	addi	a0,a0,-2040 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	4d4080e7          	jalr	1236(ra) # 800052cc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005e00:	0014849b          	addiw	s1,s1,1
    80005e04:	0ff4f493          	andi	s1,s1,255
    80005e08:	00f00793          	li	a5,15
    80005e0c:	fc97f0e3          	bgeu	a5,s1,80005dcc <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80005e10:	ffffc097          	auipc	ra,0xffffc
    80005e14:	5e8080e7          	jalr	1512(ra) # 800023f8 <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005e18:	00003517          	auipc	a0,0x3
    80005e1c:	66050513          	addi	a0,a0,1632 # 80009478 <CONSOLE_STATUS+0x468>
    80005e20:	fffff097          	auipc	ra,0xfffff
    80005e24:	4ac080e7          	jalr	1196(ra) # 800052cc <_Z11printStringPKc>
    finishedD = true;
    80005e28:	00100793          	li	a5,1
    80005e2c:	0000a717          	auipc	a4,0xa
    80005e30:	caf707a3          	sb	a5,-849(a4) # 8000fadb <finishedD>
}
    80005e34:	01813083          	ld	ra,24(sp)
    80005e38:	01013403          	ld	s0,16(sp)
    80005e3c:	00813483          	ld	s1,8(sp)
    80005e40:	00013903          	ld	s2,0(sp)
    80005e44:	02010113          	addi	sp,sp,32
    80005e48:	00008067          	ret

0000000080005e4c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005e4c:	fc010113          	addi	sp,sp,-64
    80005e50:	02113c23          	sd	ra,56(sp)
    80005e54:	02813823          	sd	s0,48(sp)
    80005e58:	02913423          	sd	s1,40(sp)
    80005e5c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e60:	00000613          	li	a2,0
    80005e64:	00000597          	auipc	a1,0x0
    80005e68:	b0c58593          	addi	a1,a1,-1268 # 80005970 <_Z11workerBodyAPv>
    80005e6c:	fc040513          	addi	a0,s0,-64
    80005e70:	ffffc097          	auipc	ra,0xffffc
    80005e74:	508080e7          	jalr	1288(ra) # 80002378 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005e78:	00003517          	auipc	a0,0x3
    80005e7c:	61050513          	addi	a0,a0,1552 # 80009488 <CONSOLE_STATUS+0x478>
    80005e80:	fffff097          	auipc	ra,0xfffff
    80005e84:	44c080e7          	jalr	1100(ra) # 800052cc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005e88:	00000613          	li	a2,0
    80005e8c:	00000597          	auipc	a1,0x0
    80005e90:	bb058593          	addi	a1,a1,-1104 # 80005a3c <_Z11workerBodyBPv>
    80005e94:	fc840513          	addi	a0,s0,-56
    80005e98:	ffffc097          	auipc	ra,0xffffc
    80005e9c:	4e0080e7          	jalr	1248(ra) # 80002378 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005ea0:	00003517          	auipc	a0,0x3
    80005ea4:	60050513          	addi	a0,a0,1536 # 800094a0 <CONSOLE_STATUS+0x490>
    80005ea8:	fffff097          	auipc	ra,0xfffff
    80005eac:	424080e7          	jalr	1060(ra) # 800052cc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005eb0:	00000613          	li	a2,0
    80005eb4:	00000597          	auipc	a1,0x0
    80005eb8:	cd058593          	addi	a1,a1,-816 # 80005b84 <_Z11workerBodyCPv>
    80005ebc:	fd040513          	addi	a0,s0,-48
    80005ec0:	ffffc097          	auipc	ra,0xffffc
    80005ec4:	4b8080e7          	jalr	1208(ra) # 80002378 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005ec8:	00003517          	auipc	a0,0x3
    80005ecc:	5f050513          	addi	a0,a0,1520 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005ed0:	fffff097          	auipc	ra,0xfffff
    80005ed4:	3fc080e7          	jalr	1020(ra) # 800052cc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005ed8:	00000613          	li	a2,0
    80005edc:	00000597          	auipc	a1,0x0
    80005ee0:	e2858593          	addi	a1,a1,-472 # 80005d04 <_Z11workerBodyDPv>
    80005ee4:	fd840513          	addi	a0,s0,-40
    80005ee8:	ffffc097          	auipc	ra,0xffffc
    80005eec:	490080e7          	jalr	1168(ra) # 80002378 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005ef0:	00003517          	auipc	a0,0x3
    80005ef4:	5e050513          	addi	a0,a0,1504 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80005ef8:	fffff097          	auipc	ra,0xfffff
    80005efc:	3d4080e7          	jalr	980(ra) # 800052cc <_Z11printStringPKc>
    80005f00:	00c0006f          	j	80005f0c <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005f04:	ffffc097          	auipc	ra,0xffffc
    80005f08:	4f4080e7          	jalr	1268(ra) # 800023f8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005f0c:	0000a797          	auipc	a5,0xa
    80005f10:	bcc7c783          	lbu	a5,-1076(a5) # 8000fad8 <finishedA>
    80005f14:	fe0788e3          	beqz	a5,80005f04 <_Z18Threads_C_API_testv+0xb8>
    80005f18:	0000a797          	auipc	a5,0xa
    80005f1c:	bc17c783          	lbu	a5,-1087(a5) # 8000fad9 <finishedB>
    80005f20:	fe0782e3          	beqz	a5,80005f04 <_Z18Threads_C_API_testv+0xb8>
    80005f24:	0000a797          	auipc	a5,0xa
    80005f28:	bb67c783          	lbu	a5,-1098(a5) # 8000fada <finishedC>
    80005f2c:	fc078ce3          	beqz	a5,80005f04 <_Z18Threads_C_API_testv+0xb8>
    80005f30:	0000a797          	auipc	a5,0xa
    80005f34:	bab7c783          	lbu	a5,-1109(a5) # 8000fadb <finishedD>
    80005f38:	fc0786e3          	beqz	a5,80005f04 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005f3c:	fc040493          	addi	s1,s0,-64
    80005f40:	0080006f          	j	80005f48 <_Z18Threads_C_API_testv+0xfc>
    80005f44:	00848493          	addi	s1,s1,8
    80005f48:	fe040793          	addi	a5,s0,-32
    80005f4c:	00f48c63          	beq	s1,a5,80005f64 <_Z18Threads_C_API_testv+0x118>
    80005f50:	0004b503          	ld	a0,0(s1)
    80005f54:	fe0508e3          	beqz	a0,80005f44 <_Z18Threads_C_API_testv+0xf8>
    80005f58:	ffffc097          	auipc	ra,0xffffc
    80005f5c:	71c080e7          	jalr	1820(ra) # 80002674 <_ZN7_threaddlEPv>
    80005f60:	fe5ff06f          	j	80005f44 <_Z18Threads_C_API_testv+0xf8>
}
    80005f64:	03813083          	ld	ra,56(sp)
    80005f68:	03013403          	ld	s0,48(sp)
    80005f6c:	02813483          	ld	s1,40(sp)
    80005f70:	04010113          	addi	sp,sp,64
    80005f74:	00008067          	ret

0000000080005f78 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005f78:	ff010113          	addi	sp,sp,-16
    80005f7c:	00113423          	sd	ra,8(sp)
    80005f80:	00813023          	sd	s0,0(sp)
    80005f84:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	ec4080e7          	jalr	-316(ra) # 80005e4c <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005f90:	00813083          	ld	ra,8(sp)
    80005f94:	00013403          	ld	s0,0(sp)
    80005f98:	01010113          	addi	sp,sp,16
    80005f9c:	00008067          	ret

0000000080005fa0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005fa0:	fe010113          	addi	sp,sp,-32
    80005fa4:	00113c23          	sd	ra,24(sp)
    80005fa8:	00813823          	sd	s0,16(sp)
    80005fac:	00913423          	sd	s1,8(sp)
    80005fb0:	01213023          	sd	s2,0(sp)
    80005fb4:	02010413          	addi	s0,sp,32
    80005fb8:	00050493          	mv	s1,a0
    80005fbc:	00058913          	mv	s2,a1
    80005fc0:	0015879b          	addiw	a5,a1,1
    80005fc4:	0007851b          	sext.w	a0,a5
    80005fc8:	00f4a023          	sw	a5,0(s1)
    80005fcc:	0004a823          	sw	zero,16(s1)
    80005fd0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fd4:	00251513          	slli	a0,a0,0x2
    80005fd8:	ffffc097          	auipc	ra,0xffffc
    80005fdc:	344080e7          	jalr	836(ra) # 8000231c <_Z9mem_allocm>
    80005fe0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005fe4:	00000593          	li	a1,0
    80005fe8:	02048513          	addi	a0,s1,32
    80005fec:	ffffc097          	auipc	ra,0xffffc
    80005ff0:	454080e7          	jalr	1108(ra) # 80002440 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005ff4:	00090593          	mv	a1,s2
    80005ff8:	01848513          	addi	a0,s1,24
    80005ffc:	ffffc097          	auipc	ra,0xffffc
    80006000:	444080e7          	jalr	1092(ra) # 80002440 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006004:	00100593          	li	a1,1
    80006008:	02848513          	addi	a0,s1,40
    8000600c:	ffffc097          	auipc	ra,0xffffc
    80006010:	434080e7          	jalr	1076(ra) # 80002440 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006014:	00100593          	li	a1,1
    80006018:	03048513          	addi	a0,s1,48
    8000601c:	ffffc097          	auipc	ra,0xffffc
    80006020:	424080e7          	jalr	1060(ra) # 80002440 <_Z8sem_openPP4_semj>
}
    80006024:	01813083          	ld	ra,24(sp)
    80006028:	01013403          	ld	s0,16(sp)
    8000602c:	00813483          	ld	s1,8(sp)
    80006030:	00013903          	ld	s2,0(sp)
    80006034:	02010113          	addi	sp,sp,32
    80006038:	00008067          	ret

000000008000603c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000603c:	fe010113          	addi	sp,sp,-32
    80006040:	00113c23          	sd	ra,24(sp)
    80006044:	00813823          	sd	s0,16(sp)
    80006048:	00913423          	sd	s1,8(sp)
    8000604c:	01213023          	sd	s2,0(sp)
    80006050:	02010413          	addi	s0,sp,32
    80006054:	00050493          	mv	s1,a0
    80006058:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000605c:	01853503          	ld	a0,24(a0)
    80006060:	ffffc097          	auipc	ra,0xffffc
    80006064:	444080e7          	jalr	1092(ra) # 800024a4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006068:	0304b503          	ld	a0,48(s1)
    8000606c:	ffffc097          	auipc	ra,0xffffc
    80006070:	438080e7          	jalr	1080(ra) # 800024a4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006074:	0084b783          	ld	a5,8(s1)
    80006078:	0144a703          	lw	a4,20(s1)
    8000607c:	00271713          	slli	a4,a4,0x2
    80006080:	00e787b3          	add	a5,a5,a4
    80006084:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006088:	0144a783          	lw	a5,20(s1)
    8000608c:	0017879b          	addiw	a5,a5,1
    80006090:	0004a703          	lw	a4,0(s1)
    80006094:	02e7e7bb          	remw	a5,a5,a4
    80006098:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000609c:	0304b503          	ld	a0,48(s1)
    800060a0:	ffffc097          	auipc	ra,0xffffc
    800060a4:	430080e7          	jalr	1072(ra) # 800024d0 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800060a8:	0204b503          	ld	a0,32(s1)
    800060ac:	ffffc097          	auipc	ra,0xffffc
    800060b0:	424080e7          	jalr	1060(ra) # 800024d0 <_Z10sem_signalP4_sem>

}
    800060b4:	01813083          	ld	ra,24(sp)
    800060b8:	01013403          	ld	s0,16(sp)
    800060bc:	00813483          	ld	s1,8(sp)
    800060c0:	00013903          	ld	s2,0(sp)
    800060c4:	02010113          	addi	sp,sp,32
    800060c8:	00008067          	ret

00000000800060cc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800060cc:	fe010113          	addi	sp,sp,-32
    800060d0:	00113c23          	sd	ra,24(sp)
    800060d4:	00813823          	sd	s0,16(sp)
    800060d8:	00913423          	sd	s1,8(sp)
    800060dc:	01213023          	sd	s2,0(sp)
    800060e0:	02010413          	addi	s0,sp,32
    800060e4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800060e8:	02053503          	ld	a0,32(a0)
    800060ec:	ffffc097          	auipc	ra,0xffffc
    800060f0:	3b8080e7          	jalr	952(ra) # 800024a4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800060f4:	0284b503          	ld	a0,40(s1)
    800060f8:	ffffc097          	auipc	ra,0xffffc
    800060fc:	3ac080e7          	jalr	940(ra) # 800024a4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006100:	0084b703          	ld	a4,8(s1)
    80006104:	0104a783          	lw	a5,16(s1)
    80006108:	00279693          	slli	a3,a5,0x2
    8000610c:	00d70733          	add	a4,a4,a3
    80006110:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006114:	0017879b          	addiw	a5,a5,1
    80006118:	0004a703          	lw	a4,0(s1)
    8000611c:	02e7e7bb          	remw	a5,a5,a4
    80006120:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006124:	0284b503          	ld	a0,40(s1)
    80006128:	ffffc097          	auipc	ra,0xffffc
    8000612c:	3a8080e7          	jalr	936(ra) # 800024d0 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006130:	0184b503          	ld	a0,24(s1)
    80006134:	ffffc097          	auipc	ra,0xffffc
    80006138:	39c080e7          	jalr	924(ra) # 800024d0 <_Z10sem_signalP4_sem>

    return ret;
}
    8000613c:	00090513          	mv	a0,s2
    80006140:	01813083          	ld	ra,24(sp)
    80006144:	01013403          	ld	s0,16(sp)
    80006148:	00813483          	ld	s1,8(sp)
    8000614c:	00013903          	ld	s2,0(sp)
    80006150:	02010113          	addi	sp,sp,32
    80006154:	00008067          	ret

0000000080006158 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006158:	fe010113          	addi	sp,sp,-32
    8000615c:	00113c23          	sd	ra,24(sp)
    80006160:	00813823          	sd	s0,16(sp)
    80006164:	00913423          	sd	s1,8(sp)
    80006168:	01213023          	sd	s2,0(sp)
    8000616c:	02010413          	addi	s0,sp,32
    80006170:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006174:	02853503          	ld	a0,40(a0)
    80006178:	ffffc097          	auipc	ra,0xffffc
    8000617c:	32c080e7          	jalr	812(ra) # 800024a4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006180:	0304b503          	ld	a0,48(s1)
    80006184:	ffffc097          	auipc	ra,0xffffc
    80006188:	320080e7          	jalr	800(ra) # 800024a4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000618c:	0144a783          	lw	a5,20(s1)
    80006190:	0104a903          	lw	s2,16(s1)
    80006194:	0327ce63          	blt	a5,s2,800061d0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006198:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000619c:	0304b503          	ld	a0,48(s1)
    800061a0:	ffffc097          	auipc	ra,0xffffc
    800061a4:	330080e7          	jalr	816(ra) # 800024d0 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800061a8:	0284b503          	ld	a0,40(s1)
    800061ac:	ffffc097          	auipc	ra,0xffffc
    800061b0:	324080e7          	jalr	804(ra) # 800024d0 <_Z10sem_signalP4_sem>

    return ret;
    800061b4:	00090513          	mv	a0,s2
    800061b8:	01813083          	ld	ra,24(sp)
    800061bc:	01013403          	ld	s0,16(sp)
    800061c0:	00813483          	ld	s1,8(sp)
    800061c4:	00013903          	ld	s2,0(sp)
    800061c8:	02010113          	addi	sp,sp,32
    800061cc:	00008067          	ret
        ret = cap - head + tail;
    800061d0:	0004a703          	lw	a4,0(s1)
    800061d4:	4127093b          	subw	s2,a4,s2
    800061d8:	00f9093b          	addw	s2,s2,a5
    800061dc:	fc1ff06f          	j	8000619c <_ZN6Buffer6getCntEv+0x44>

00000000800061e0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800061e0:	fe010113          	addi	sp,sp,-32
    800061e4:	00113c23          	sd	ra,24(sp)
    800061e8:	00813823          	sd	s0,16(sp)
    800061ec:	00913423          	sd	s1,8(sp)
    800061f0:	02010413          	addi	s0,sp,32
    800061f4:	00050493          	mv	s1,a0
    putc('\n');
    800061f8:	00a00513          	li	a0,10
    800061fc:	ffffc097          	auipc	ra,0xffffc
    80006200:	400080e7          	jalr	1024(ra) # 800025fc <_Z4putcc>
    printString("Buffer deleted!\n");
    80006204:	00003517          	auipc	a0,0x3
    80006208:	1d450513          	addi	a0,a0,468 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000620c:	fffff097          	auipc	ra,0xfffff
    80006210:	0c0080e7          	jalr	192(ra) # 800052cc <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006214:	00048513          	mv	a0,s1
    80006218:	00000097          	auipc	ra,0x0
    8000621c:	f40080e7          	jalr	-192(ra) # 80006158 <_ZN6Buffer6getCntEv>
    80006220:	02a05c63          	blez	a0,80006258 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006224:	0084b783          	ld	a5,8(s1)
    80006228:	0104a703          	lw	a4,16(s1)
    8000622c:	00271713          	slli	a4,a4,0x2
    80006230:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006234:	0007c503          	lbu	a0,0(a5)
    80006238:	ffffc097          	auipc	ra,0xffffc
    8000623c:	3c4080e7          	jalr	964(ra) # 800025fc <_Z4putcc>
        head = (head + 1) % cap;
    80006240:	0104a783          	lw	a5,16(s1)
    80006244:	0017879b          	addiw	a5,a5,1
    80006248:	0004a703          	lw	a4,0(s1)
    8000624c:	02e7e7bb          	remw	a5,a5,a4
    80006250:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006254:	fc1ff06f          	j	80006214 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006258:	02100513          	li	a0,33
    8000625c:	ffffc097          	auipc	ra,0xffffc
    80006260:	3a0080e7          	jalr	928(ra) # 800025fc <_Z4putcc>
    putc('\n');
    80006264:	00a00513          	li	a0,10
    80006268:	ffffc097          	auipc	ra,0xffffc
    8000626c:	394080e7          	jalr	916(ra) # 800025fc <_Z4putcc>
    mem_free(buffer);
    80006270:	0084b503          	ld	a0,8(s1)
    80006274:	ffffc097          	auipc	ra,0xffffc
    80006278:	0d8080e7          	jalr	216(ra) # 8000234c <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000627c:	0204b503          	ld	a0,32(s1)
    80006280:	ffffc097          	auipc	ra,0xffffc
    80006284:	1f8080e7          	jalr	504(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006288:	0184b503          	ld	a0,24(s1)
    8000628c:	ffffc097          	auipc	ra,0xffffc
    80006290:	1ec080e7          	jalr	492(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006294:	0304b503          	ld	a0,48(s1)
    80006298:	ffffc097          	auipc	ra,0xffffc
    8000629c:	1e0080e7          	jalr	480(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800062a0:	0284b503          	ld	a0,40(s1)
    800062a4:	ffffc097          	auipc	ra,0xffffc
    800062a8:	1d4080e7          	jalr	468(ra) # 80002478 <_Z9sem_closeP4_sem>
}
    800062ac:	01813083          	ld	ra,24(sp)
    800062b0:	01013403          	ld	s0,16(sp)
    800062b4:	00813483          	ld	s1,8(sp)
    800062b8:	02010113          	addi	sp,sp,32
    800062bc:	00008067          	ret

00000000800062c0 <start>:
    800062c0:	ff010113          	addi	sp,sp,-16
    800062c4:	00813423          	sd	s0,8(sp)
    800062c8:	01010413          	addi	s0,sp,16
    800062cc:	300027f3          	csrr	a5,mstatus
    800062d0:	ffffe737          	lui	a4,0xffffe
    800062d4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffedabf>
    800062d8:	00e7f7b3          	and	a5,a5,a4
    800062dc:	00001737          	lui	a4,0x1
    800062e0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800062e4:	00e7e7b3          	or	a5,a5,a4
    800062e8:	30079073          	csrw	mstatus,a5
    800062ec:	00000797          	auipc	a5,0x0
    800062f0:	16078793          	addi	a5,a5,352 # 8000644c <system_main>
    800062f4:	34179073          	csrw	mepc,a5
    800062f8:	00000793          	li	a5,0
    800062fc:	18079073          	csrw	satp,a5
    80006300:	000107b7          	lui	a5,0x10
    80006304:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006308:	30279073          	csrw	medeleg,a5
    8000630c:	30379073          	csrw	mideleg,a5
    80006310:	104027f3          	csrr	a5,sie
    80006314:	2227e793          	ori	a5,a5,546
    80006318:	10479073          	csrw	sie,a5
    8000631c:	fff00793          	li	a5,-1
    80006320:	00a7d793          	srli	a5,a5,0xa
    80006324:	3b079073          	csrw	pmpaddr0,a5
    80006328:	00f00793          	li	a5,15
    8000632c:	3a079073          	csrw	pmpcfg0,a5
    80006330:	f14027f3          	csrr	a5,mhartid
    80006334:	0200c737          	lui	a4,0x200c
    80006338:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000633c:	0007869b          	sext.w	a3,a5
    80006340:	00269713          	slli	a4,a3,0x2
    80006344:	000f4637          	lui	a2,0xf4
    80006348:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000634c:	00d70733          	add	a4,a4,a3
    80006350:	0037979b          	slliw	a5,a5,0x3
    80006354:	020046b7          	lui	a3,0x2004
    80006358:	00d787b3          	add	a5,a5,a3
    8000635c:	00c585b3          	add	a1,a1,a2
    80006360:	00371693          	slli	a3,a4,0x3
    80006364:	00009717          	auipc	a4,0x9
    80006368:	77c70713          	addi	a4,a4,1916 # 8000fae0 <timer_scratch>
    8000636c:	00b7b023          	sd	a1,0(a5)
    80006370:	00d70733          	add	a4,a4,a3
    80006374:	00f73c23          	sd	a5,24(a4)
    80006378:	02c73023          	sd	a2,32(a4)
    8000637c:	34071073          	csrw	mscratch,a4
    80006380:	00000797          	auipc	a5,0x0
    80006384:	6e078793          	addi	a5,a5,1760 # 80006a60 <timervec>
    80006388:	30579073          	csrw	mtvec,a5
    8000638c:	300027f3          	csrr	a5,mstatus
    80006390:	0087e793          	ori	a5,a5,8
    80006394:	30079073          	csrw	mstatus,a5
    80006398:	304027f3          	csrr	a5,mie
    8000639c:	0807e793          	ori	a5,a5,128
    800063a0:	30479073          	csrw	mie,a5
    800063a4:	f14027f3          	csrr	a5,mhartid
    800063a8:	0007879b          	sext.w	a5,a5
    800063ac:	00078213          	mv	tp,a5
    800063b0:	30200073          	mret
    800063b4:	00813403          	ld	s0,8(sp)
    800063b8:	01010113          	addi	sp,sp,16
    800063bc:	00008067          	ret

00000000800063c0 <timerinit>:
    800063c0:	ff010113          	addi	sp,sp,-16
    800063c4:	00813423          	sd	s0,8(sp)
    800063c8:	01010413          	addi	s0,sp,16
    800063cc:	f14027f3          	csrr	a5,mhartid
    800063d0:	0200c737          	lui	a4,0x200c
    800063d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800063d8:	0007869b          	sext.w	a3,a5
    800063dc:	00269713          	slli	a4,a3,0x2
    800063e0:	000f4637          	lui	a2,0xf4
    800063e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063e8:	00d70733          	add	a4,a4,a3
    800063ec:	0037979b          	slliw	a5,a5,0x3
    800063f0:	020046b7          	lui	a3,0x2004
    800063f4:	00d787b3          	add	a5,a5,a3
    800063f8:	00c585b3          	add	a1,a1,a2
    800063fc:	00371693          	slli	a3,a4,0x3
    80006400:	00009717          	auipc	a4,0x9
    80006404:	6e070713          	addi	a4,a4,1760 # 8000fae0 <timer_scratch>
    80006408:	00b7b023          	sd	a1,0(a5)
    8000640c:	00d70733          	add	a4,a4,a3
    80006410:	00f73c23          	sd	a5,24(a4)
    80006414:	02c73023          	sd	a2,32(a4)
    80006418:	34071073          	csrw	mscratch,a4
    8000641c:	00000797          	auipc	a5,0x0
    80006420:	64478793          	addi	a5,a5,1604 # 80006a60 <timervec>
    80006424:	30579073          	csrw	mtvec,a5
    80006428:	300027f3          	csrr	a5,mstatus
    8000642c:	0087e793          	ori	a5,a5,8
    80006430:	30079073          	csrw	mstatus,a5
    80006434:	304027f3          	csrr	a5,mie
    80006438:	0807e793          	ori	a5,a5,128
    8000643c:	30479073          	csrw	mie,a5
    80006440:	00813403          	ld	s0,8(sp)
    80006444:	01010113          	addi	sp,sp,16
    80006448:	00008067          	ret

000000008000644c <system_main>:
    8000644c:	fe010113          	addi	sp,sp,-32
    80006450:	00813823          	sd	s0,16(sp)
    80006454:	00913423          	sd	s1,8(sp)
    80006458:	00113c23          	sd	ra,24(sp)
    8000645c:	02010413          	addi	s0,sp,32
    80006460:	00000097          	auipc	ra,0x0
    80006464:	0c4080e7          	jalr	196(ra) # 80006524 <cpuid>
    80006468:	00005497          	auipc	s1,0x5
    8000646c:	57848493          	addi	s1,s1,1400 # 8000b9e0 <started>
    80006470:	02050263          	beqz	a0,80006494 <system_main+0x48>
    80006474:	0004a783          	lw	a5,0(s1)
    80006478:	0007879b          	sext.w	a5,a5
    8000647c:	fe078ce3          	beqz	a5,80006474 <system_main+0x28>
    80006480:	0ff0000f          	fence
    80006484:	00003517          	auipc	a0,0x3
    80006488:	09450513          	addi	a0,a0,148 # 80009518 <CONSOLE_STATUS+0x508>
    8000648c:	00001097          	auipc	ra,0x1
    80006490:	a70080e7          	jalr	-1424(ra) # 80006efc <panic>
    80006494:	00001097          	auipc	ra,0x1
    80006498:	9c4080e7          	jalr	-1596(ra) # 80006e58 <consoleinit>
    8000649c:	00001097          	auipc	ra,0x1
    800064a0:	150080e7          	jalr	336(ra) # 800075ec <printfinit>
    800064a4:	00003517          	auipc	a0,0x3
    800064a8:	15450513          	addi	a0,a0,340 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800064ac:	00001097          	auipc	ra,0x1
    800064b0:	aac080e7          	jalr	-1364(ra) # 80006f58 <__printf>
    800064b4:	00003517          	auipc	a0,0x3
    800064b8:	03450513          	addi	a0,a0,52 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800064bc:	00001097          	auipc	ra,0x1
    800064c0:	a9c080e7          	jalr	-1380(ra) # 80006f58 <__printf>
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	13450513          	addi	a0,a0,308 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800064cc:	00001097          	auipc	ra,0x1
    800064d0:	a8c080e7          	jalr	-1396(ra) # 80006f58 <__printf>
    800064d4:	00001097          	auipc	ra,0x1
    800064d8:	4a4080e7          	jalr	1188(ra) # 80007978 <kinit>
    800064dc:	00000097          	auipc	ra,0x0
    800064e0:	148080e7          	jalr	328(ra) # 80006624 <trapinit>
    800064e4:	00000097          	auipc	ra,0x0
    800064e8:	16c080e7          	jalr	364(ra) # 80006650 <trapinithart>
    800064ec:	00000097          	auipc	ra,0x0
    800064f0:	5b4080e7          	jalr	1460(ra) # 80006aa0 <plicinit>
    800064f4:	00000097          	auipc	ra,0x0
    800064f8:	5d4080e7          	jalr	1492(ra) # 80006ac8 <plicinithart>
    800064fc:	00000097          	auipc	ra,0x0
    80006500:	078080e7          	jalr	120(ra) # 80006574 <userinit>
    80006504:	0ff0000f          	fence
    80006508:	00100793          	li	a5,1
    8000650c:	00003517          	auipc	a0,0x3
    80006510:	ff450513          	addi	a0,a0,-12 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006514:	00f4a023          	sw	a5,0(s1)
    80006518:	00001097          	auipc	ra,0x1
    8000651c:	a40080e7          	jalr	-1472(ra) # 80006f58 <__printf>
    80006520:	0000006f          	j	80006520 <system_main+0xd4>

0000000080006524 <cpuid>:
    80006524:	ff010113          	addi	sp,sp,-16
    80006528:	00813423          	sd	s0,8(sp)
    8000652c:	01010413          	addi	s0,sp,16
    80006530:	00020513          	mv	a0,tp
    80006534:	00813403          	ld	s0,8(sp)
    80006538:	0005051b          	sext.w	a0,a0
    8000653c:	01010113          	addi	sp,sp,16
    80006540:	00008067          	ret

0000000080006544 <mycpu>:
    80006544:	ff010113          	addi	sp,sp,-16
    80006548:	00813423          	sd	s0,8(sp)
    8000654c:	01010413          	addi	s0,sp,16
    80006550:	00020793          	mv	a5,tp
    80006554:	00813403          	ld	s0,8(sp)
    80006558:	0007879b          	sext.w	a5,a5
    8000655c:	00779793          	slli	a5,a5,0x7
    80006560:	0000a517          	auipc	a0,0xa
    80006564:	5b050513          	addi	a0,a0,1456 # 80010b10 <cpus>
    80006568:	00f50533          	add	a0,a0,a5
    8000656c:	01010113          	addi	sp,sp,16
    80006570:	00008067          	ret

0000000080006574 <userinit>:
    80006574:	ff010113          	addi	sp,sp,-16
    80006578:	00813423          	sd	s0,8(sp)
    8000657c:	01010413          	addi	s0,sp,16
    80006580:	00813403          	ld	s0,8(sp)
    80006584:	01010113          	addi	sp,sp,16
    80006588:	ffffd317          	auipc	t1,0xffffd
    8000658c:	4bc30067          	jr	1212(t1) # 80003a44 <main>

0000000080006590 <either_copyout>:
    80006590:	ff010113          	addi	sp,sp,-16
    80006594:	00813023          	sd	s0,0(sp)
    80006598:	00113423          	sd	ra,8(sp)
    8000659c:	01010413          	addi	s0,sp,16
    800065a0:	02051663          	bnez	a0,800065cc <either_copyout+0x3c>
    800065a4:	00058513          	mv	a0,a1
    800065a8:	00060593          	mv	a1,a2
    800065ac:	0006861b          	sext.w	a2,a3
    800065b0:	00002097          	auipc	ra,0x2
    800065b4:	c54080e7          	jalr	-940(ra) # 80008204 <__memmove>
    800065b8:	00813083          	ld	ra,8(sp)
    800065bc:	00013403          	ld	s0,0(sp)
    800065c0:	00000513          	li	a0,0
    800065c4:	01010113          	addi	sp,sp,16
    800065c8:	00008067          	ret
    800065cc:	00003517          	auipc	a0,0x3
    800065d0:	f7450513          	addi	a0,a0,-140 # 80009540 <CONSOLE_STATUS+0x530>
    800065d4:	00001097          	auipc	ra,0x1
    800065d8:	928080e7          	jalr	-1752(ra) # 80006efc <panic>

00000000800065dc <either_copyin>:
    800065dc:	ff010113          	addi	sp,sp,-16
    800065e0:	00813023          	sd	s0,0(sp)
    800065e4:	00113423          	sd	ra,8(sp)
    800065e8:	01010413          	addi	s0,sp,16
    800065ec:	02059463          	bnez	a1,80006614 <either_copyin+0x38>
    800065f0:	00060593          	mv	a1,a2
    800065f4:	0006861b          	sext.w	a2,a3
    800065f8:	00002097          	auipc	ra,0x2
    800065fc:	c0c080e7          	jalr	-1012(ra) # 80008204 <__memmove>
    80006600:	00813083          	ld	ra,8(sp)
    80006604:	00013403          	ld	s0,0(sp)
    80006608:	00000513          	li	a0,0
    8000660c:	01010113          	addi	sp,sp,16
    80006610:	00008067          	ret
    80006614:	00003517          	auipc	a0,0x3
    80006618:	f5450513          	addi	a0,a0,-172 # 80009568 <CONSOLE_STATUS+0x558>
    8000661c:	00001097          	auipc	ra,0x1
    80006620:	8e0080e7          	jalr	-1824(ra) # 80006efc <panic>

0000000080006624 <trapinit>:
    80006624:	ff010113          	addi	sp,sp,-16
    80006628:	00813423          	sd	s0,8(sp)
    8000662c:	01010413          	addi	s0,sp,16
    80006630:	00813403          	ld	s0,8(sp)
    80006634:	00003597          	auipc	a1,0x3
    80006638:	f5c58593          	addi	a1,a1,-164 # 80009590 <CONSOLE_STATUS+0x580>
    8000663c:	0000a517          	auipc	a0,0xa
    80006640:	55450513          	addi	a0,a0,1364 # 80010b90 <tickslock>
    80006644:	01010113          	addi	sp,sp,16
    80006648:	00001317          	auipc	t1,0x1
    8000664c:	5c030067          	jr	1472(t1) # 80007c08 <initlock>

0000000080006650 <trapinithart>:
    80006650:	ff010113          	addi	sp,sp,-16
    80006654:	00813423          	sd	s0,8(sp)
    80006658:	01010413          	addi	s0,sp,16
    8000665c:	00000797          	auipc	a5,0x0
    80006660:	2f478793          	addi	a5,a5,756 # 80006950 <kernelvec>
    80006664:	10579073          	csrw	stvec,a5
    80006668:	00813403          	ld	s0,8(sp)
    8000666c:	01010113          	addi	sp,sp,16
    80006670:	00008067          	ret

0000000080006674 <usertrap>:
    80006674:	ff010113          	addi	sp,sp,-16
    80006678:	00813423          	sd	s0,8(sp)
    8000667c:	01010413          	addi	s0,sp,16
    80006680:	00813403          	ld	s0,8(sp)
    80006684:	01010113          	addi	sp,sp,16
    80006688:	00008067          	ret

000000008000668c <usertrapret>:
    8000668c:	ff010113          	addi	sp,sp,-16
    80006690:	00813423          	sd	s0,8(sp)
    80006694:	01010413          	addi	s0,sp,16
    80006698:	00813403          	ld	s0,8(sp)
    8000669c:	01010113          	addi	sp,sp,16
    800066a0:	00008067          	ret

00000000800066a4 <kerneltrap>:
    800066a4:	fe010113          	addi	sp,sp,-32
    800066a8:	00813823          	sd	s0,16(sp)
    800066ac:	00113c23          	sd	ra,24(sp)
    800066b0:	00913423          	sd	s1,8(sp)
    800066b4:	02010413          	addi	s0,sp,32
    800066b8:	142025f3          	csrr	a1,scause
    800066bc:	100027f3          	csrr	a5,sstatus
    800066c0:	0027f793          	andi	a5,a5,2
    800066c4:	10079c63          	bnez	a5,800067dc <kerneltrap+0x138>
    800066c8:	142027f3          	csrr	a5,scause
    800066cc:	0207ce63          	bltz	a5,80006708 <kerneltrap+0x64>
    800066d0:	00003517          	auipc	a0,0x3
    800066d4:	f0850513          	addi	a0,a0,-248 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800066d8:	00001097          	auipc	ra,0x1
    800066dc:	880080e7          	jalr	-1920(ra) # 80006f58 <__printf>
    800066e0:	141025f3          	csrr	a1,sepc
    800066e4:	14302673          	csrr	a2,stval
    800066e8:	00003517          	auipc	a0,0x3
    800066ec:	f0050513          	addi	a0,a0,-256 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800066f0:	00001097          	auipc	ra,0x1
    800066f4:	868080e7          	jalr	-1944(ra) # 80006f58 <__printf>
    800066f8:	00003517          	auipc	a0,0x3
    800066fc:	f0850513          	addi	a0,a0,-248 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006700:	00000097          	auipc	ra,0x0
    80006704:	7fc080e7          	jalr	2044(ra) # 80006efc <panic>
    80006708:	0ff7f713          	andi	a4,a5,255
    8000670c:	00900693          	li	a3,9
    80006710:	04d70063          	beq	a4,a3,80006750 <kerneltrap+0xac>
    80006714:	fff00713          	li	a4,-1
    80006718:	03f71713          	slli	a4,a4,0x3f
    8000671c:	00170713          	addi	a4,a4,1
    80006720:	fae798e3          	bne	a5,a4,800066d0 <kerneltrap+0x2c>
    80006724:	00000097          	auipc	ra,0x0
    80006728:	e00080e7          	jalr	-512(ra) # 80006524 <cpuid>
    8000672c:	06050663          	beqz	a0,80006798 <kerneltrap+0xf4>
    80006730:	144027f3          	csrr	a5,sip
    80006734:	ffd7f793          	andi	a5,a5,-3
    80006738:	14479073          	csrw	sip,a5
    8000673c:	01813083          	ld	ra,24(sp)
    80006740:	01013403          	ld	s0,16(sp)
    80006744:	00813483          	ld	s1,8(sp)
    80006748:	02010113          	addi	sp,sp,32
    8000674c:	00008067          	ret
    80006750:	00000097          	auipc	ra,0x0
    80006754:	3c4080e7          	jalr	964(ra) # 80006b14 <plic_claim>
    80006758:	00a00793          	li	a5,10
    8000675c:	00050493          	mv	s1,a0
    80006760:	06f50863          	beq	a0,a5,800067d0 <kerneltrap+0x12c>
    80006764:	fc050ce3          	beqz	a0,8000673c <kerneltrap+0x98>
    80006768:	00050593          	mv	a1,a0
    8000676c:	00003517          	auipc	a0,0x3
    80006770:	e4c50513          	addi	a0,a0,-436 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006774:	00000097          	auipc	ra,0x0
    80006778:	7e4080e7          	jalr	2020(ra) # 80006f58 <__printf>
    8000677c:	01013403          	ld	s0,16(sp)
    80006780:	01813083          	ld	ra,24(sp)
    80006784:	00048513          	mv	a0,s1
    80006788:	00813483          	ld	s1,8(sp)
    8000678c:	02010113          	addi	sp,sp,32
    80006790:	00000317          	auipc	t1,0x0
    80006794:	3bc30067          	jr	956(t1) # 80006b4c <plic_complete>
    80006798:	0000a517          	auipc	a0,0xa
    8000679c:	3f850513          	addi	a0,a0,1016 # 80010b90 <tickslock>
    800067a0:	00001097          	auipc	ra,0x1
    800067a4:	48c080e7          	jalr	1164(ra) # 80007c2c <acquire>
    800067a8:	00005717          	auipc	a4,0x5
    800067ac:	23c70713          	addi	a4,a4,572 # 8000b9e4 <ticks>
    800067b0:	00072783          	lw	a5,0(a4)
    800067b4:	0000a517          	auipc	a0,0xa
    800067b8:	3dc50513          	addi	a0,a0,988 # 80010b90 <tickslock>
    800067bc:	0017879b          	addiw	a5,a5,1
    800067c0:	00f72023          	sw	a5,0(a4)
    800067c4:	00001097          	auipc	ra,0x1
    800067c8:	534080e7          	jalr	1332(ra) # 80007cf8 <release>
    800067cc:	f65ff06f          	j	80006730 <kerneltrap+0x8c>
    800067d0:	00001097          	auipc	ra,0x1
    800067d4:	090080e7          	jalr	144(ra) # 80007860 <uartintr>
    800067d8:	fa5ff06f          	j	8000677c <kerneltrap+0xd8>
    800067dc:	00003517          	auipc	a0,0x3
    800067e0:	dbc50513          	addi	a0,a0,-580 # 80009598 <CONSOLE_STATUS+0x588>
    800067e4:	00000097          	auipc	ra,0x0
    800067e8:	718080e7          	jalr	1816(ra) # 80006efc <panic>

00000000800067ec <clockintr>:
    800067ec:	fe010113          	addi	sp,sp,-32
    800067f0:	00813823          	sd	s0,16(sp)
    800067f4:	00913423          	sd	s1,8(sp)
    800067f8:	00113c23          	sd	ra,24(sp)
    800067fc:	02010413          	addi	s0,sp,32
    80006800:	0000a497          	auipc	s1,0xa
    80006804:	39048493          	addi	s1,s1,912 # 80010b90 <tickslock>
    80006808:	00048513          	mv	a0,s1
    8000680c:	00001097          	auipc	ra,0x1
    80006810:	420080e7          	jalr	1056(ra) # 80007c2c <acquire>
    80006814:	00005717          	auipc	a4,0x5
    80006818:	1d070713          	addi	a4,a4,464 # 8000b9e4 <ticks>
    8000681c:	00072783          	lw	a5,0(a4)
    80006820:	01013403          	ld	s0,16(sp)
    80006824:	01813083          	ld	ra,24(sp)
    80006828:	00048513          	mv	a0,s1
    8000682c:	0017879b          	addiw	a5,a5,1
    80006830:	00813483          	ld	s1,8(sp)
    80006834:	00f72023          	sw	a5,0(a4)
    80006838:	02010113          	addi	sp,sp,32
    8000683c:	00001317          	auipc	t1,0x1
    80006840:	4bc30067          	jr	1212(t1) # 80007cf8 <release>

0000000080006844 <devintr>:
    80006844:	142027f3          	csrr	a5,scause
    80006848:	00000513          	li	a0,0
    8000684c:	0007c463          	bltz	a5,80006854 <devintr+0x10>
    80006850:	00008067          	ret
    80006854:	fe010113          	addi	sp,sp,-32
    80006858:	00813823          	sd	s0,16(sp)
    8000685c:	00113c23          	sd	ra,24(sp)
    80006860:	00913423          	sd	s1,8(sp)
    80006864:	02010413          	addi	s0,sp,32
    80006868:	0ff7f713          	andi	a4,a5,255
    8000686c:	00900693          	li	a3,9
    80006870:	04d70c63          	beq	a4,a3,800068c8 <devintr+0x84>
    80006874:	fff00713          	li	a4,-1
    80006878:	03f71713          	slli	a4,a4,0x3f
    8000687c:	00170713          	addi	a4,a4,1
    80006880:	00e78c63          	beq	a5,a4,80006898 <devintr+0x54>
    80006884:	01813083          	ld	ra,24(sp)
    80006888:	01013403          	ld	s0,16(sp)
    8000688c:	00813483          	ld	s1,8(sp)
    80006890:	02010113          	addi	sp,sp,32
    80006894:	00008067          	ret
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	c8c080e7          	jalr	-884(ra) # 80006524 <cpuid>
    800068a0:	06050663          	beqz	a0,8000690c <devintr+0xc8>
    800068a4:	144027f3          	csrr	a5,sip
    800068a8:	ffd7f793          	andi	a5,a5,-3
    800068ac:	14479073          	csrw	sip,a5
    800068b0:	01813083          	ld	ra,24(sp)
    800068b4:	01013403          	ld	s0,16(sp)
    800068b8:	00813483          	ld	s1,8(sp)
    800068bc:	00200513          	li	a0,2
    800068c0:	02010113          	addi	sp,sp,32
    800068c4:	00008067          	ret
    800068c8:	00000097          	auipc	ra,0x0
    800068cc:	24c080e7          	jalr	588(ra) # 80006b14 <plic_claim>
    800068d0:	00a00793          	li	a5,10
    800068d4:	00050493          	mv	s1,a0
    800068d8:	06f50663          	beq	a0,a5,80006944 <devintr+0x100>
    800068dc:	00100513          	li	a0,1
    800068e0:	fa0482e3          	beqz	s1,80006884 <devintr+0x40>
    800068e4:	00048593          	mv	a1,s1
    800068e8:	00003517          	auipc	a0,0x3
    800068ec:	cd050513          	addi	a0,a0,-816 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800068f0:	00000097          	auipc	ra,0x0
    800068f4:	668080e7          	jalr	1640(ra) # 80006f58 <__printf>
    800068f8:	00048513          	mv	a0,s1
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	250080e7          	jalr	592(ra) # 80006b4c <plic_complete>
    80006904:	00100513          	li	a0,1
    80006908:	f7dff06f          	j	80006884 <devintr+0x40>
    8000690c:	0000a517          	auipc	a0,0xa
    80006910:	28450513          	addi	a0,a0,644 # 80010b90 <tickslock>
    80006914:	00001097          	auipc	ra,0x1
    80006918:	318080e7          	jalr	792(ra) # 80007c2c <acquire>
    8000691c:	00005717          	auipc	a4,0x5
    80006920:	0c870713          	addi	a4,a4,200 # 8000b9e4 <ticks>
    80006924:	00072783          	lw	a5,0(a4)
    80006928:	0000a517          	auipc	a0,0xa
    8000692c:	26850513          	addi	a0,a0,616 # 80010b90 <tickslock>
    80006930:	0017879b          	addiw	a5,a5,1
    80006934:	00f72023          	sw	a5,0(a4)
    80006938:	00001097          	auipc	ra,0x1
    8000693c:	3c0080e7          	jalr	960(ra) # 80007cf8 <release>
    80006940:	f65ff06f          	j	800068a4 <devintr+0x60>
    80006944:	00001097          	auipc	ra,0x1
    80006948:	f1c080e7          	jalr	-228(ra) # 80007860 <uartintr>
    8000694c:	fadff06f          	j	800068f8 <devintr+0xb4>

0000000080006950 <kernelvec>:
    80006950:	f0010113          	addi	sp,sp,-256
    80006954:	00113023          	sd	ra,0(sp)
    80006958:	00213423          	sd	sp,8(sp)
    8000695c:	00313823          	sd	gp,16(sp)
    80006960:	00413c23          	sd	tp,24(sp)
    80006964:	02513023          	sd	t0,32(sp)
    80006968:	02613423          	sd	t1,40(sp)
    8000696c:	02713823          	sd	t2,48(sp)
    80006970:	02813c23          	sd	s0,56(sp)
    80006974:	04913023          	sd	s1,64(sp)
    80006978:	04a13423          	sd	a0,72(sp)
    8000697c:	04b13823          	sd	a1,80(sp)
    80006980:	04c13c23          	sd	a2,88(sp)
    80006984:	06d13023          	sd	a3,96(sp)
    80006988:	06e13423          	sd	a4,104(sp)
    8000698c:	06f13823          	sd	a5,112(sp)
    80006990:	07013c23          	sd	a6,120(sp)
    80006994:	09113023          	sd	a7,128(sp)
    80006998:	09213423          	sd	s2,136(sp)
    8000699c:	09313823          	sd	s3,144(sp)
    800069a0:	09413c23          	sd	s4,152(sp)
    800069a4:	0b513023          	sd	s5,160(sp)
    800069a8:	0b613423          	sd	s6,168(sp)
    800069ac:	0b713823          	sd	s7,176(sp)
    800069b0:	0b813c23          	sd	s8,184(sp)
    800069b4:	0d913023          	sd	s9,192(sp)
    800069b8:	0da13423          	sd	s10,200(sp)
    800069bc:	0db13823          	sd	s11,208(sp)
    800069c0:	0dc13c23          	sd	t3,216(sp)
    800069c4:	0fd13023          	sd	t4,224(sp)
    800069c8:	0fe13423          	sd	t5,232(sp)
    800069cc:	0ff13823          	sd	t6,240(sp)
    800069d0:	cd5ff0ef          	jal	ra,800066a4 <kerneltrap>
    800069d4:	00013083          	ld	ra,0(sp)
    800069d8:	00813103          	ld	sp,8(sp)
    800069dc:	01013183          	ld	gp,16(sp)
    800069e0:	02013283          	ld	t0,32(sp)
    800069e4:	02813303          	ld	t1,40(sp)
    800069e8:	03013383          	ld	t2,48(sp)
    800069ec:	03813403          	ld	s0,56(sp)
    800069f0:	04013483          	ld	s1,64(sp)
    800069f4:	04813503          	ld	a0,72(sp)
    800069f8:	05013583          	ld	a1,80(sp)
    800069fc:	05813603          	ld	a2,88(sp)
    80006a00:	06013683          	ld	a3,96(sp)
    80006a04:	06813703          	ld	a4,104(sp)
    80006a08:	07013783          	ld	a5,112(sp)
    80006a0c:	07813803          	ld	a6,120(sp)
    80006a10:	08013883          	ld	a7,128(sp)
    80006a14:	08813903          	ld	s2,136(sp)
    80006a18:	09013983          	ld	s3,144(sp)
    80006a1c:	09813a03          	ld	s4,152(sp)
    80006a20:	0a013a83          	ld	s5,160(sp)
    80006a24:	0a813b03          	ld	s6,168(sp)
    80006a28:	0b013b83          	ld	s7,176(sp)
    80006a2c:	0b813c03          	ld	s8,184(sp)
    80006a30:	0c013c83          	ld	s9,192(sp)
    80006a34:	0c813d03          	ld	s10,200(sp)
    80006a38:	0d013d83          	ld	s11,208(sp)
    80006a3c:	0d813e03          	ld	t3,216(sp)
    80006a40:	0e013e83          	ld	t4,224(sp)
    80006a44:	0e813f03          	ld	t5,232(sp)
    80006a48:	0f013f83          	ld	t6,240(sp)
    80006a4c:	10010113          	addi	sp,sp,256
    80006a50:	10200073          	sret
    80006a54:	00000013          	nop
    80006a58:	00000013          	nop
    80006a5c:	00000013          	nop

0000000080006a60 <timervec>:
    80006a60:	34051573          	csrrw	a0,mscratch,a0
    80006a64:	00b53023          	sd	a1,0(a0)
    80006a68:	00c53423          	sd	a2,8(a0)
    80006a6c:	00d53823          	sd	a3,16(a0)
    80006a70:	01853583          	ld	a1,24(a0)
    80006a74:	02053603          	ld	a2,32(a0)
    80006a78:	0005b683          	ld	a3,0(a1)
    80006a7c:	00c686b3          	add	a3,a3,a2
    80006a80:	00d5b023          	sd	a3,0(a1)
    80006a84:	00200593          	li	a1,2
    80006a88:	14459073          	csrw	sip,a1
    80006a8c:	01053683          	ld	a3,16(a0)
    80006a90:	00853603          	ld	a2,8(a0)
    80006a94:	00053583          	ld	a1,0(a0)
    80006a98:	34051573          	csrrw	a0,mscratch,a0
    80006a9c:	30200073          	mret

0000000080006aa0 <plicinit>:
    80006aa0:	ff010113          	addi	sp,sp,-16
    80006aa4:	00813423          	sd	s0,8(sp)
    80006aa8:	01010413          	addi	s0,sp,16
    80006aac:	00813403          	ld	s0,8(sp)
    80006ab0:	0c0007b7          	lui	a5,0xc000
    80006ab4:	00100713          	li	a4,1
    80006ab8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006abc:	00e7a223          	sw	a4,4(a5)
    80006ac0:	01010113          	addi	sp,sp,16
    80006ac4:	00008067          	ret

0000000080006ac8 <plicinithart>:
    80006ac8:	ff010113          	addi	sp,sp,-16
    80006acc:	00813023          	sd	s0,0(sp)
    80006ad0:	00113423          	sd	ra,8(sp)
    80006ad4:	01010413          	addi	s0,sp,16
    80006ad8:	00000097          	auipc	ra,0x0
    80006adc:	a4c080e7          	jalr	-1460(ra) # 80006524 <cpuid>
    80006ae0:	0085171b          	slliw	a4,a0,0x8
    80006ae4:	0c0027b7          	lui	a5,0xc002
    80006ae8:	00e787b3          	add	a5,a5,a4
    80006aec:	40200713          	li	a4,1026
    80006af0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006af4:	00813083          	ld	ra,8(sp)
    80006af8:	00013403          	ld	s0,0(sp)
    80006afc:	00d5151b          	slliw	a0,a0,0xd
    80006b00:	0c2017b7          	lui	a5,0xc201
    80006b04:	00a78533          	add	a0,a5,a0
    80006b08:	00052023          	sw	zero,0(a0)
    80006b0c:	01010113          	addi	sp,sp,16
    80006b10:	00008067          	ret

0000000080006b14 <plic_claim>:
    80006b14:	ff010113          	addi	sp,sp,-16
    80006b18:	00813023          	sd	s0,0(sp)
    80006b1c:	00113423          	sd	ra,8(sp)
    80006b20:	01010413          	addi	s0,sp,16
    80006b24:	00000097          	auipc	ra,0x0
    80006b28:	a00080e7          	jalr	-1536(ra) # 80006524 <cpuid>
    80006b2c:	00813083          	ld	ra,8(sp)
    80006b30:	00013403          	ld	s0,0(sp)
    80006b34:	00d5151b          	slliw	a0,a0,0xd
    80006b38:	0c2017b7          	lui	a5,0xc201
    80006b3c:	00a78533          	add	a0,a5,a0
    80006b40:	00452503          	lw	a0,4(a0)
    80006b44:	01010113          	addi	sp,sp,16
    80006b48:	00008067          	ret

0000000080006b4c <plic_complete>:
    80006b4c:	fe010113          	addi	sp,sp,-32
    80006b50:	00813823          	sd	s0,16(sp)
    80006b54:	00913423          	sd	s1,8(sp)
    80006b58:	00113c23          	sd	ra,24(sp)
    80006b5c:	02010413          	addi	s0,sp,32
    80006b60:	00050493          	mv	s1,a0
    80006b64:	00000097          	auipc	ra,0x0
    80006b68:	9c0080e7          	jalr	-1600(ra) # 80006524 <cpuid>
    80006b6c:	01813083          	ld	ra,24(sp)
    80006b70:	01013403          	ld	s0,16(sp)
    80006b74:	00d5179b          	slliw	a5,a0,0xd
    80006b78:	0c201737          	lui	a4,0xc201
    80006b7c:	00f707b3          	add	a5,a4,a5
    80006b80:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b84:	00813483          	ld	s1,8(sp)
    80006b88:	02010113          	addi	sp,sp,32
    80006b8c:	00008067          	ret

0000000080006b90 <consolewrite>:
    80006b90:	fb010113          	addi	sp,sp,-80
    80006b94:	04813023          	sd	s0,64(sp)
    80006b98:	04113423          	sd	ra,72(sp)
    80006b9c:	02913c23          	sd	s1,56(sp)
    80006ba0:	03213823          	sd	s2,48(sp)
    80006ba4:	03313423          	sd	s3,40(sp)
    80006ba8:	03413023          	sd	s4,32(sp)
    80006bac:	01513c23          	sd	s5,24(sp)
    80006bb0:	05010413          	addi	s0,sp,80
    80006bb4:	06c05c63          	blez	a2,80006c2c <consolewrite+0x9c>
    80006bb8:	00060993          	mv	s3,a2
    80006bbc:	00050a13          	mv	s4,a0
    80006bc0:	00058493          	mv	s1,a1
    80006bc4:	00000913          	li	s2,0
    80006bc8:	fff00a93          	li	s5,-1
    80006bcc:	01c0006f          	j	80006be8 <consolewrite+0x58>
    80006bd0:	fbf44503          	lbu	a0,-65(s0)
    80006bd4:	0019091b          	addiw	s2,s2,1
    80006bd8:	00148493          	addi	s1,s1,1
    80006bdc:	00001097          	auipc	ra,0x1
    80006be0:	a9c080e7          	jalr	-1380(ra) # 80007678 <uartputc>
    80006be4:	03298063          	beq	s3,s2,80006c04 <consolewrite+0x74>
    80006be8:	00048613          	mv	a2,s1
    80006bec:	00100693          	li	a3,1
    80006bf0:	000a0593          	mv	a1,s4
    80006bf4:	fbf40513          	addi	a0,s0,-65
    80006bf8:	00000097          	auipc	ra,0x0
    80006bfc:	9e4080e7          	jalr	-1564(ra) # 800065dc <either_copyin>
    80006c00:	fd5518e3          	bne	a0,s5,80006bd0 <consolewrite+0x40>
    80006c04:	04813083          	ld	ra,72(sp)
    80006c08:	04013403          	ld	s0,64(sp)
    80006c0c:	03813483          	ld	s1,56(sp)
    80006c10:	02813983          	ld	s3,40(sp)
    80006c14:	02013a03          	ld	s4,32(sp)
    80006c18:	01813a83          	ld	s5,24(sp)
    80006c1c:	00090513          	mv	a0,s2
    80006c20:	03013903          	ld	s2,48(sp)
    80006c24:	05010113          	addi	sp,sp,80
    80006c28:	00008067          	ret
    80006c2c:	00000913          	li	s2,0
    80006c30:	fd5ff06f          	j	80006c04 <consolewrite+0x74>

0000000080006c34 <consoleread>:
    80006c34:	f9010113          	addi	sp,sp,-112
    80006c38:	06813023          	sd	s0,96(sp)
    80006c3c:	04913c23          	sd	s1,88(sp)
    80006c40:	05213823          	sd	s2,80(sp)
    80006c44:	05313423          	sd	s3,72(sp)
    80006c48:	05413023          	sd	s4,64(sp)
    80006c4c:	03513c23          	sd	s5,56(sp)
    80006c50:	03613823          	sd	s6,48(sp)
    80006c54:	03713423          	sd	s7,40(sp)
    80006c58:	03813023          	sd	s8,32(sp)
    80006c5c:	06113423          	sd	ra,104(sp)
    80006c60:	01913c23          	sd	s9,24(sp)
    80006c64:	07010413          	addi	s0,sp,112
    80006c68:	00060b93          	mv	s7,a2
    80006c6c:	00050913          	mv	s2,a0
    80006c70:	00058c13          	mv	s8,a1
    80006c74:	00060b1b          	sext.w	s6,a2
    80006c78:	0000a497          	auipc	s1,0xa
    80006c7c:	f4048493          	addi	s1,s1,-192 # 80010bb8 <cons>
    80006c80:	00400993          	li	s3,4
    80006c84:	fff00a13          	li	s4,-1
    80006c88:	00a00a93          	li	s5,10
    80006c8c:	05705e63          	blez	s7,80006ce8 <consoleread+0xb4>
    80006c90:	09c4a703          	lw	a4,156(s1)
    80006c94:	0984a783          	lw	a5,152(s1)
    80006c98:	0007071b          	sext.w	a4,a4
    80006c9c:	08e78463          	beq	a5,a4,80006d24 <consoleread+0xf0>
    80006ca0:	07f7f713          	andi	a4,a5,127
    80006ca4:	00e48733          	add	a4,s1,a4
    80006ca8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006cac:	0017869b          	addiw	a3,a5,1
    80006cb0:	08d4ac23          	sw	a3,152(s1)
    80006cb4:	00070c9b          	sext.w	s9,a4
    80006cb8:	0b370663          	beq	a4,s3,80006d64 <consoleread+0x130>
    80006cbc:	00100693          	li	a3,1
    80006cc0:	f9f40613          	addi	a2,s0,-97
    80006cc4:	000c0593          	mv	a1,s8
    80006cc8:	00090513          	mv	a0,s2
    80006ccc:	f8e40fa3          	sb	a4,-97(s0)
    80006cd0:	00000097          	auipc	ra,0x0
    80006cd4:	8c0080e7          	jalr	-1856(ra) # 80006590 <either_copyout>
    80006cd8:	01450863          	beq	a0,s4,80006ce8 <consoleread+0xb4>
    80006cdc:	001c0c13          	addi	s8,s8,1
    80006ce0:	fffb8b9b          	addiw	s7,s7,-1
    80006ce4:	fb5c94e3          	bne	s9,s5,80006c8c <consoleread+0x58>
    80006ce8:	000b851b          	sext.w	a0,s7
    80006cec:	06813083          	ld	ra,104(sp)
    80006cf0:	06013403          	ld	s0,96(sp)
    80006cf4:	05813483          	ld	s1,88(sp)
    80006cf8:	05013903          	ld	s2,80(sp)
    80006cfc:	04813983          	ld	s3,72(sp)
    80006d00:	04013a03          	ld	s4,64(sp)
    80006d04:	03813a83          	ld	s5,56(sp)
    80006d08:	02813b83          	ld	s7,40(sp)
    80006d0c:	02013c03          	ld	s8,32(sp)
    80006d10:	01813c83          	ld	s9,24(sp)
    80006d14:	40ab053b          	subw	a0,s6,a0
    80006d18:	03013b03          	ld	s6,48(sp)
    80006d1c:	07010113          	addi	sp,sp,112
    80006d20:	00008067          	ret
    80006d24:	00001097          	auipc	ra,0x1
    80006d28:	1d8080e7          	jalr	472(ra) # 80007efc <push_on>
    80006d2c:	0984a703          	lw	a4,152(s1)
    80006d30:	09c4a783          	lw	a5,156(s1)
    80006d34:	0007879b          	sext.w	a5,a5
    80006d38:	fef70ce3          	beq	a4,a5,80006d30 <consoleread+0xfc>
    80006d3c:	00001097          	auipc	ra,0x1
    80006d40:	234080e7          	jalr	564(ra) # 80007f70 <pop_on>
    80006d44:	0984a783          	lw	a5,152(s1)
    80006d48:	07f7f713          	andi	a4,a5,127
    80006d4c:	00e48733          	add	a4,s1,a4
    80006d50:	01874703          	lbu	a4,24(a4)
    80006d54:	0017869b          	addiw	a3,a5,1
    80006d58:	08d4ac23          	sw	a3,152(s1)
    80006d5c:	00070c9b          	sext.w	s9,a4
    80006d60:	f5371ee3          	bne	a4,s3,80006cbc <consoleread+0x88>
    80006d64:	000b851b          	sext.w	a0,s7
    80006d68:	f96bf2e3          	bgeu	s7,s6,80006cec <consoleread+0xb8>
    80006d6c:	08f4ac23          	sw	a5,152(s1)
    80006d70:	f7dff06f          	j	80006cec <consoleread+0xb8>

0000000080006d74 <consputc>:
    80006d74:	10000793          	li	a5,256
    80006d78:	00f50663          	beq	a0,a5,80006d84 <consputc+0x10>
    80006d7c:	00001317          	auipc	t1,0x1
    80006d80:	9f430067          	jr	-1548(t1) # 80007770 <uartputc_sync>
    80006d84:	ff010113          	addi	sp,sp,-16
    80006d88:	00113423          	sd	ra,8(sp)
    80006d8c:	00813023          	sd	s0,0(sp)
    80006d90:	01010413          	addi	s0,sp,16
    80006d94:	00800513          	li	a0,8
    80006d98:	00001097          	auipc	ra,0x1
    80006d9c:	9d8080e7          	jalr	-1576(ra) # 80007770 <uartputc_sync>
    80006da0:	02000513          	li	a0,32
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	9cc080e7          	jalr	-1588(ra) # 80007770 <uartputc_sync>
    80006dac:	00013403          	ld	s0,0(sp)
    80006db0:	00813083          	ld	ra,8(sp)
    80006db4:	00800513          	li	a0,8
    80006db8:	01010113          	addi	sp,sp,16
    80006dbc:	00001317          	auipc	t1,0x1
    80006dc0:	9b430067          	jr	-1612(t1) # 80007770 <uartputc_sync>

0000000080006dc4 <consoleintr>:
    80006dc4:	fe010113          	addi	sp,sp,-32
    80006dc8:	00813823          	sd	s0,16(sp)
    80006dcc:	00913423          	sd	s1,8(sp)
    80006dd0:	01213023          	sd	s2,0(sp)
    80006dd4:	00113c23          	sd	ra,24(sp)
    80006dd8:	02010413          	addi	s0,sp,32
    80006ddc:	0000a917          	auipc	s2,0xa
    80006de0:	ddc90913          	addi	s2,s2,-548 # 80010bb8 <cons>
    80006de4:	00050493          	mv	s1,a0
    80006de8:	00090513          	mv	a0,s2
    80006dec:	00001097          	auipc	ra,0x1
    80006df0:	e40080e7          	jalr	-448(ra) # 80007c2c <acquire>
    80006df4:	02048c63          	beqz	s1,80006e2c <consoleintr+0x68>
    80006df8:	0a092783          	lw	a5,160(s2)
    80006dfc:	09892703          	lw	a4,152(s2)
    80006e00:	07f00693          	li	a3,127
    80006e04:	40e7873b          	subw	a4,a5,a4
    80006e08:	02e6e263          	bltu	a3,a4,80006e2c <consoleintr+0x68>
    80006e0c:	00d00713          	li	a4,13
    80006e10:	04e48063          	beq	s1,a4,80006e50 <consoleintr+0x8c>
    80006e14:	07f7f713          	andi	a4,a5,127
    80006e18:	00e90733          	add	a4,s2,a4
    80006e1c:	0017879b          	addiw	a5,a5,1
    80006e20:	0af92023          	sw	a5,160(s2)
    80006e24:	00970c23          	sb	s1,24(a4)
    80006e28:	08f92e23          	sw	a5,156(s2)
    80006e2c:	01013403          	ld	s0,16(sp)
    80006e30:	01813083          	ld	ra,24(sp)
    80006e34:	00813483          	ld	s1,8(sp)
    80006e38:	00013903          	ld	s2,0(sp)
    80006e3c:	0000a517          	auipc	a0,0xa
    80006e40:	d7c50513          	addi	a0,a0,-644 # 80010bb8 <cons>
    80006e44:	02010113          	addi	sp,sp,32
    80006e48:	00001317          	auipc	t1,0x1
    80006e4c:	eb030067          	jr	-336(t1) # 80007cf8 <release>
    80006e50:	00a00493          	li	s1,10
    80006e54:	fc1ff06f          	j	80006e14 <consoleintr+0x50>

0000000080006e58 <consoleinit>:
    80006e58:	fe010113          	addi	sp,sp,-32
    80006e5c:	00113c23          	sd	ra,24(sp)
    80006e60:	00813823          	sd	s0,16(sp)
    80006e64:	00913423          	sd	s1,8(sp)
    80006e68:	02010413          	addi	s0,sp,32
    80006e6c:	0000a497          	auipc	s1,0xa
    80006e70:	d4c48493          	addi	s1,s1,-692 # 80010bb8 <cons>
    80006e74:	00048513          	mv	a0,s1
    80006e78:	00002597          	auipc	a1,0x2
    80006e7c:	79858593          	addi	a1,a1,1944 # 80009610 <CONSOLE_STATUS+0x600>
    80006e80:	00001097          	auipc	ra,0x1
    80006e84:	d88080e7          	jalr	-632(ra) # 80007c08 <initlock>
    80006e88:	00000097          	auipc	ra,0x0
    80006e8c:	7ac080e7          	jalr	1964(ra) # 80007634 <uartinit>
    80006e90:	01813083          	ld	ra,24(sp)
    80006e94:	01013403          	ld	s0,16(sp)
    80006e98:	00000797          	auipc	a5,0x0
    80006e9c:	d9c78793          	addi	a5,a5,-612 # 80006c34 <consoleread>
    80006ea0:	0af4bc23          	sd	a5,184(s1)
    80006ea4:	00000797          	auipc	a5,0x0
    80006ea8:	cec78793          	addi	a5,a5,-788 # 80006b90 <consolewrite>
    80006eac:	0cf4b023          	sd	a5,192(s1)
    80006eb0:	00813483          	ld	s1,8(sp)
    80006eb4:	02010113          	addi	sp,sp,32
    80006eb8:	00008067          	ret

0000000080006ebc <console_read>:
    80006ebc:	ff010113          	addi	sp,sp,-16
    80006ec0:	00813423          	sd	s0,8(sp)
    80006ec4:	01010413          	addi	s0,sp,16
    80006ec8:	00813403          	ld	s0,8(sp)
    80006ecc:	0000a317          	auipc	t1,0xa
    80006ed0:	da433303          	ld	t1,-604(t1) # 80010c70 <devsw+0x10>
    80006ed4:	01010113          	addi	sp,sp,16
    80006ed8:	00030067          	jr	t1

0000000080006edc <console_write>:
    80006edc:	ff010113          	addi	sp,sp,-16
    80006ee0:	00813423          	sd	s0,8(sp)
    80006ee4:	01010413          	addi	s0,sp,16
    80006ee8:	00813403          	ld	s0,8(sp)
    80006eec:	0000a317          	auipc	t1,0xa
    80006ef0:	d8c33303          	ld	t1,-628(t1) # 80010c78 <devsw+0x18>
    80006ef4:	01010113          	addi	sp,sp,16
    80006ef8:	00030067          	jr	t1

0000000080006efc <panic>:
    80006efc:	fe010113          	addi	sp,sp,-32
    80006f00:	00113c23          	sd	ra,24(sp)
    80006f04:	00813823          	sd	s0,16(sp)
    80006f08:	00913423          	sd	s1,8(sp)
    80006f0c:	02010413          	addi	s0,sp,32
    80006f10:	00050493          	mv	s1,a0
    80006f14:	00002517          	auipc	a0,0x2
    80006f18:	70450513          	addi	a0,a0,1796 # 80009618 <CONSOLE_STATUS+0x608>
    80006f1c:	0000a797          	auipc	a5,0xa
    80006f20:	de07ae23          	sw	zero,-516(a5) # 80010d18 <pr+0x18>
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	034080e7          	jalr	52(ra) # 80006f58 <__printf>
    80006f2c:	00048513          	mv	a0,s1
    80006f30:	00000097          	auipc	ra,0x0
    80006f34:	028080e7          	jalr	40(ra) # 80006f58 <__printf>
    80006f38:	00002517          	auipc	a0,0x2
    80006f3c:	6c050513          	addi	a0,a0,1728 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006f40:	00000097          	auipc	ra,0x0
    80006f44:	018080e7          	jalr	24(ra) # 80006f58 <__printf>
    80006f48:	00100793          	li	a5,1
    80006f4c:	00005717          	auipc	a4,0x5
    80006f50:	a8f72e23          	sw	a5,-1380(a4) # 8000b9e8 <panicked>
    80006f54:	0000006f          	j	80006f54 <panic+0x58>

0000000080006f58 <__printf>:
    80006f58:	f3010113          	addi	sp,sp,-208
    80006f5c:	08813023          	sd	s0,128(sp)
    80006f60:	07313423          	sd	s3,104(sp)
    80006f64:	09010413          	addi	s0,sp,144
    80006f68:	05813023          	sd	s8,64(sp)
    80006f6c:	08113423          	sd	ra,136(sp)
    80006f70:	06913c23          	sd	s1,120(sp)
    80006f74:	07213823          	sd	s2,112(sp)
    80006f78:	07413023          	sd	s4,96(sp)
    80006f7c:	05513c23          	sd	s5,88(sp)
    80006f80:	05613823          	sd	s6,80(sp)
    80006f84:	05713423          	sd	s7,72(sp)
    80006f88:	03913c23          	sd	s9,56(sp)
    80006f8c:	03a13823          	sd	s10,48(sp)
    80006f90:	03b13423          	sd	s11,40(sp)
    80006f94:	0000a317          	auipc	t1,0xa
    80006f98:	d6c30313          	addi	t1,t1,-660 # 80010d00 <pr>
    80006f9c:	01832c03          	lw	s8,24(t1)
    80006fa0:	00b43423          	sd	a1,8(s0)
    80006fa4:	00c43823          	sd	a2,16(s0)
    80006fa8:	00d43c23          	sd	a3,24(s0)
    80006fac:	02e43023          	sd	a4,32(s0)
    80006fb0:	02f43423          	sd	a5,40(s0)
    80006fb4:	03043823          	sd	a6,48(s0)
    80006fb8:	03143c23          	sd	a7,56(s0)
    80006fbc:	00050993          	mv	s3,a0
    80006fc0:	4a0c1663          	bnez	s8,8000746c <__printf+0x514>
    80006fc4:	60098c63          	beqz	s3,800075dc <__printf+0x684>
    80006fc8:	0009c503          	lbu	a0,0(s3)
    80006fcc:	00840793          	addi	a5,s0,8
    80006fd0:	f6f43c23          	sd	a5,-136(s0)
    80006fd4:	00000493          	li	s1,0
    80006fd8:	22050063          	beqz	a0,800071f8 <__printf+0x2a0>
    80006fdc:	00002a37          	lui	s4,0x2
    80006fe0:	00018ab7          	lui	s5,0x18
    80006fe4:	000f4b37          	lui	s6,0xf4
    80006fe8:	00989bb7          	lui	s7,0x989
    80006fec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006ff0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006ff4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006ff8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006ffc:	00148c9b          	addiw	s9,s1,1
    80007000:	02500793          	li	a5,37
    80007004:	01998933          	add	s2,s3,s9
    80007008:	38f51263          	bne	a0,a5,8000738c <__printf+0x434>
    8000700c:	00094783          	lbu	a5,0(s2)
    80007010:	00078c9b          	sext.w	s9,a5
    80007014:	1e078263          	beqz	a5,800071f8 <__printf+0x2a0>
    80007018:	0024849b          	addiw	s1,s1,2
    8000701c:	07000713          	li	a4,112
    80007020:	00998933          	add	s2,s3,s1
    80007024:	38e78a63          	beq	a5,a4,800073b8 <__printf+0x460>
    80007028:	20f76863          	bltu	a4,a5,80007238 <__printf+0x2e0>
    8000702c:	42a78863          	beq	a5,a0,8000745c <__printf+0x504>
    80007030:	06400713          	li	a4,100
    80007034:	40e79663          	bne	a5,a4,80007440 <__printf+0x4e8>
    80007038:	f7843783          	ld	a5,-136(s0)
    8000703c:	0007a603          	lw	a2,0(a5)
    80007040:	00878793          	addi	a5,a5,8
    80007044:	f6f43c23          	sd	a5,-136(s0)
    80007048:	42064a63          	bltz	a2,8000747c <__printf+0x524>
    8000704c:	00a00713          	li	a4,10
    80007050:	02e677bb          	remuw	a5,a2,a4
    80007054:	00002d97          	auipc	s11,0x2
    80007058:	5ecd8d93          	addi	s11,s11,1516 # 80009640 <digits>
    8000705c:	00900593          	li	a1,9
    80007060:	0006051b          	sext.w	a0,a2
    80007064:	00000c93          	li	s9,0
    80007068:	02079793          	slli	a5,a5,0x20
    8000706c:	0207d793          	srli	a5,a5,0x20
    80007070:	00fd87b3          	add	a5,s11,a5
    80007074:	0007c783          	lbu	a5,0(a5)
    80007078:	02e656bb          	divuw	a3,a2,a4
    8000707c:	f8f40023          	sb	a5,-128(s0)
    80007080:	14c5d863          	bge	a1,a2,800071d0 <__printf+0x278>
    80007084:	06300593          	li	a1,99
    80007088:	00100c93          	li	s9,1
    8000708c:	02e6f7bb          	remuw	a5,a3,a4
    80007090:	02079793          	slli	a5,a5,0x20
    80007094:	0207d793          	srli	a5,a5,0x20
    80007098:	00fd87b3          	add	a5,s11,a5
    8000709c:	0007c783          	lbu	a5,0(a5)
    800070a0:	02e6d73b          	divuw	a4,a3,a4
    800070a4:	f8f400a3          	sb	a5,-127(s0)
    800070a8:	12a5f463          	bgeu	a1,a0,800071d0 <__printf+0x278>
    800070ac:	00a00693          	li	a3,10
    800070b0:	00900593          	li	a1,9
    800070b4:	02d777bb          	remuw	a5,a4,a3
    800070b8:	02079793          	slli	a5,a5,0x20
    800070bc:	0207d793          	srli	a5,a5,0x20
    800070c0:	00fd87b3          	add	a5,s11,a5
    800070c4:	0007c503          	lbu	a0,0(a5)
    800070c8:	02d757bb          	divuw	a5,a4,a3
    800070cc:	f8a40123          	sb	a0,-126(s0)
    800070d0:	48e5f263          	bgeu	a1,a4,80007554 <__printf+0x5fc>
    800070d4:	06300513          	li	a0,99
    800070d8:	02d7f5bb          	remuw	a1,a5,a3
    800070dc:	02059593          	slli	a1,a1,0x20
    800070e0:	0205d593          	srli	a1,a1,0x20
    800070e4:	00bd85b3          	add	a1,s11,a1
    800070e8:	0005c583          	lbu	a1,0(a1)
    800070ec:	02d7d7bb          	divuw	a5,a5,a3
    800070f0:	f8b401a3          	sb	a1,-125(s0)
    800070f4:	48e57263          	bgeu	a0,a4,80007578 <__printf+0x620>
    800070f8:	3e700513          	li	a0,999
    800070fc:	02d7f5bb          	remuw	a1,a5,a3
    80007100:	02059593          	slli	a1,a1,0x20
    80007104:	0205d593          	srli	a1,a1,0x20
    80007108:	00bd85b3          	add	a1,s11,a1
    8000710c:	0005c583          	lbu	a1,0(a1)
    80007110:	02d7d7bb          	divuw	a5,a5,a3
    80007114:	f8b40223          	sb	a1,-124(s0)
    80007118:	46e57663          	bgeu	a0,a4,80007584 <__printf+0x62c>
    8000711c:	02d7f5bb          	remuw	a1,a5,a3
    80007120:	02059593          	slli	a1,a1,0x20
    80007124:	0205d593          	srli	a1,a1,0x20
    80007128:	00bd85b3          	add	a1,s11,a1
    8000712c:	0005c583          	lbu	a1,0(a1)
    80007130:	02d7d7bb          	divuw	a5,a5,a3
    80007134:	f8b402a3          	sb	a1,-123(s0)
    80007138:	46ea7863          	bgeu	s4,a4,800075a8 <__printf+0x650>
    8000713c:	02d7f5bb          	remuw	a1,a5,a3
    80007140:	02059593          	slli	a1,a1,0x20
    80007144:	0205d593          	srli	a1,a1,0x20
    80007148:	00bd85b3          	add	a1,s11,a1
    8000714c:	0005c583          	lbu	a1,0(a1)
    80007150:	02d7d7bb          	divuw	a5,a5,a3
    80007154:	f8b40323          	sb	a1,-122(s0)
    80007158:	3eeaf863          	bgeu	s5,a4,80007548 <__printf+0x5f0>
    8000715c:	02d7f5bb          	remuw	a1,a5,a3
    80007160:	02059593          	slli	a1,a1,0x20
    80007164:	0205d593          	srli	a1,a1,0x20
    80007168:	00bd85b3          	add	a1,s11,a1
    8000716c:	0005c583          	lbu	a1,0(a1)
    80007170:	02d7d7bb          	divuw	a5,a5,a3
    80007174:	f8b403a3          	sb	a1,-121(s0)
    80007178:	42eb7e63          	bgeu	s6,a4,800075b4 <__printf+0x65c>
    8000717c:	02d7f5bb          	remuw	a1,a5,a3
    80007180:	02059593          	slli	a1,a1,0x20
    80007184:	0205d593          	srli	a1,a1,0x20
    80007188:	00bd85b3          	add	a1,s11,a1
    8000718c:	0005c583          	lbu	a1,0(a1)
    80007190:	02d7d7bb          	divuw	a5,a5,a3
    80007194:	f8b40423          	sb	a1,-120(s0)
    80007198:	42ebfc63          	bgeu	s7,a4,800075d0 <__printf+0x678>
    8000719c:	02079793          	slli	a5,a5,0x20
    800071a0:	0207d793          	srli	a5,a5,0x20
    800071a4:	00fd8db3          	add	s11,s11,a5
    800071a8:	000dc703          	lbu	a4,0(s11)
    800071ac:	00a00793          	li	a5,10
    800071b0:	00900c93          	li	s9,9
    800071b4:	f8e404a3          	sb	a4,-119(s0)
    800071b8:	00065c63          	bgez	a2,800071d0 <__printf+0x278>
    800071bc:	f9040713          	addi	a4,s0,-112
    800071c0:	00f70733          	add	a4,a4,a5
    800071c4:	02d00693          	li	a3,45
    800071c8:	fed70823          	sb	a3,-16(a4)
    800071cc:	00078c93          	mv	s9,a5
    800071d0:	f8040793          	addi	a5,s0,-128
    800071d4:	01978cb3          	add	s9,a5,s9
    800071d8:	f7f40d13          	addi	s10,s0,-129
    800071dc:	000cc503          	lbu	a0,0(s9)
    800071e0:	fffc8c93          	addi	s9,s9,-1
    800071e4:	00000097          	auipc	ra,0x0
    800071e8:	b90080e7          	jalr	-1136(ra) # 80006d74 <consputc>
    800071ec:	ffac98e3          	bne	s9,s10,800071dc <__printf+0x284>
    800071f0:	00094503          	lbu	a0,0(s2)
    800071f4:	e00514e3          	bnez	a0,80006ffc <__printf+0xa4>
    800071f8:	1a0c1663          	bnez	s8,800073a4 <__printf+0x44c>
    800071fc:	08813083          	ld	ra,136(sp)
    80007200:	08013403          	ld	s0,128(sp)
    80007204:	07813483          	ld	s1,120(sp)
    80007208:	07013903          	ld	s2,112(sp)
    8000720c:	06813983          	ld	s3,104(sp)
    80007210:	06013a03          	ld	s4,96(sp)
    80007214:	05813a83          	ld	s5,88(sp)
    80007218:	05013b03          	ld	s6,80(sp)
    8000721c:	04813b83          	ld	s7,72(sp)
    80007220:	04013c03          	ld	s8,64(sp)
    80007224:	03813c83          	ld	s9,56(sp)
    80007228:	03013d03          	ld	s10,48(sp)
    8000722c:	02813d83          	ld	s11,40(sp)
    80007230:	0d010113          	addi	sp,sp,208
    80007234:	00008067          	ret
    80007238:	07300713          	li	a4,115
    8000723c:	1ce78a63          	beq	a5,a4,80007410 <__printf+0x4b8>
    80007240:	07800713          	li	a4,120
    80007244:	1ee79e63          	bne	a5,a4,80007440 <__printf+0x4e8>
    80007248:	f7843783          	ld	a5,-136(s0)
    8000724c:	0007a703          	lw	a4,0(a5)
    80007250:	00878793          	addi	a5,a5,8
    80007254:	f6f43c23          	sd	a5,-136(s0)
    80007258:	28074263          	bltz	a4,800074dc <__printf+0x584>
    8000725c:	00002d97          	auipc	s11,0x2
    80007260:	3e4d8d93          	addi	s11,s11,996 # 80009640 <digits>
    80007264:	00f77793          	andi	a5,a4,15
    80007268:	00fd87b3          	add	a5,s11,a5
    8000726c:	0007c683          	lbu	a3,0(a5)
    80007270:	00f00613          	li	a2,15
    80007274:	0007079b          	sext.w	a5,a4
    80007278:	f8d40023          	sb	a3,-128(s0)
    8000727c:	0047559b          	srliw	a1,a4,0x4
    80007280:	0047569b          	srliw	a3,a4,0x4
    80007284:	00000c93          	li	s9,0
    80007288:	0ee65063          	bge	a2,a4,80007368 <__printf+0x410>
    8000728c:	00f6f693          	andi	a3,a3,15
    80007290:	00dd86b3          	add	a3,s11,a3
    80007294:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007298:	0087d79b          	srliw	a5,a5,0x8
    8000729c:	00100c93          	li	s9,1
    800072a0:	f8d400a3          	sb	a3,-127(s0)
    800072a4:	0cb67263          	bgeu	a2,a1,80007368 <__printf+0x410>
    800072a8:	00f7f693          	andi	a3,a5,15
    800072ac:	00dd86b3          	add	a3,s11,a3
    800072b0:	0006c583          	lbu	a1,0(a3)
    800072b4:	00f00613          	li	a2,15
    800072b8:	0047d69b          	srliw	a3,a5,0x4
    800072bc:	f8b40123          	sb	a1,-126(s0)
    800072c0:	0047d593          	srli	a1,a5,0x4
    800072c4:	28f67e63          	bgeu	a2,a5,80007560 <__printf+0x608>
    800072c8:	00f6f693          	andi	a3,a3,15
    800072cc:	00dd86b3          	add	a3,s11,a3
    800072d0:	0006c503          	lbu	a0,0(a3)
    800072d4:	0087d813          	srli	a6,a5,0x8
    800072d8:	0087d69b          	srliw	a3,a5,0x8
    800072dc:	f8a401a3          	sb	a0,-125(s0)
    800072e0:	28b67663          	bgeu	a2,a1,8000756c <__printf+0x614>
    800072e4:	00f6f693          	andi	a3,a3,15
    800072e8:	00dd86b3          	add	a3,s11,a3
    800072ec:	0006c583          	lbu	a1,0(a3)
    800072f0:	00c7d513          	srli	a0,a5,0xc
    800072f4:	00c7d69b          	srliw	a3,a5,0xc
    800072f8:	f8b40223          	sb	a1,-124(s0)
    800072fc:	29067a63          	bgeu	a2,a6,80007590 <__printf+0x638>
    80007300:	00f6f693          	andi	a3,a3,15
    80007304:	00dd86b3          	add	a3,s11,a3
    80007308:	0006c583          	lbu	a1,0(a3)
    8000730c:	0107d813          	srli	a6,a5,0x10
    80007310:	0107d69b          	srliw	a3,a5,0x10
    80007314:	f8b402a3          	sb	a1,-123(s0)
    80007318:	28a67263          	bgeu	a2,a0,8000759c <__printf+0x644>
    8000731c:	00f6f693          	andi	a3,a3,15
    80007320:	00dd86b3          	add	a3,s11,a3
    80007324:	0006c683          	lbu	a3,0(a3)
    80007328:	0147d79b          	srliw	a5,a5,0x14
    8000732c:	f8d40323          	sb	a3,-122(s0)
    80007330:	21067663          	bgeu	a2,a6,8000753c <__printf+0x5e4>
    80007334:	02079793          	slli	a5,a5,0x20
    80007338:	0207d793          	srli	a5,a5,0x20
    8000733c:	00fd8db3          	add	s11,s11,a5
    80007340:	000dc683          	lbu	a3,0(s11)
    80007344:	00800793          	li	a5,8
    80007348:	00700c93          	li	s9,7
    8000734c:	f8d403a3          	sb	a3,-121(s0)
    80007350:	00075c63          	bgez	a4,80007368 <__printf+0x410>
    80007354:	f9040713          	addi	a4,s0,-112
    80007358:	00f70733          	add	a4,a4,a5
    8000735c:	02d00693          	li	a3,45
    80007360:	fed70823          	sb	a3,-16(a4)
    80007364:	00078c93          	mv	s9,a5
    80007368:	f8040793          	addi	a5,s0,-128
    8000736c:	01978cb3          	add	s9,a5,s9
    80007370:	f7f40d13          	addi	s10,s0,-129
    80007374:	000cc503          	lbu	a0,0(s9)
    80007378:	fffc8c93          	addi	s9,s9,-1
    8000737c:	00000097          	auipc	ra,0x0
    80007380:	9f8080e7          	jalr	-1544(ra) # 80006d74 <consputc>
    80007384:	ff9d18e3          	bne	s10,s9,80007374 <__printf+0x41c>
    80007388:	0100006f          	j	80007398 <__printf+0x440>
    8000738c:	00000097          	auipc	ra,0x0
    80007390:	9e8080e7          	jalr	-1560(ra) # 80006d74 <consputc>
    80007394:	000c8493          	mv	s1,s9
    80007398:	00094503          	lbu	a0,0(s2)
    8000739c:	c60510e3          	bnez	a0,80006ffc <__printf+0xa4>
    800073a0:	e40c0ee3          	beqz	s8,800071fc <__printf+0x2a4>
    800073a4:	0000a517          	auipc	a0,0xa
    800073a8:	95c50513          	addi	a0,a0,-1700 # 80010d00 <pr>
    800073ac:	00001097          	auipc	ra,0x1
    800073b0:	94c080e7          	jalr	-1716(ra) # 80007cf8 <release>
    800073b4:	e49ff06f          	j	800071fc <__printf+0x2a4>
    800073b8:	f7843783          	ld	a5,-136(s0)
    800073bc:	03000513          	li	a0,48
    800073c0:	01000d13          	li	s10,16
    800073c4:	00878713          	addi	a4,a5,8
    800073c8:	0007bc83          	ld	s9,0(a5)
    800073cc:	f6e43c23          	sd	a4,-136(s0)
    800073d0:	00000097          	auipc	ra,0x0
    800073d4:	9a4080e7          	jalr	-1628(ra) # 80006d74 <consputc>
    800073d8:	07800513          	li	a0,120
    800073dc:	00000097          	auipc	ra,0x0
    800073e0:	998080e7          	jalr	-1640(ra) # 80006d74 <consputc>
    800073e4:	00002d97          	auipc	s11,0x2
    800073e8:	25cd8d93          	addi	s11,s11,604 # 80009640 <digits>
    800073ec:	03ccd793          	srli	a5,s9,0x3c
    800073f0:	00fd87b3          	add	a5,s11,a5
    800073f4:	0007c503          	lbu	a0,0(a5)
    800073f8:	fffd0d1b          	addiw	s10,s10,-1
    800073fc:	004c9c93          	slli	s9,s9,0x4
    80007400:	00000097          	auipc	ra,0x0
    80007404:	974080e7          	jalr	-1676(ra) # 80006d74 <consputc>
    80007408:	fe0d12e3          	bnez	s10,800073ec <__printf+0x494>
    8000740c:	f8dff06f          	j	80007398 <__printf+0x440>
    80007410:	f7843783          	ld	a5,-136(s0)
    80007414:	0007bc83          	ld	s9,0(a5)
    80007418:	00878793          	addi	a5,a5,8
    8000741c:	f6f43c23          	sd	a5,-136(s0)
    80007420:	000c9a63          	bnez	s9,80007434 <__printf+0x4dc>
    80007424:	1080006f          	j	8000752c <__printf+0x5d4>
    80007428:	001c8c93          	addi	s9,s9,1
    8000742c:	00000097          	auipc	ra,0x0
    80007430:	948080e7          	jalr	-1720(ra) # 80006d74 <consputc>
    80007434:	000cc503          	lbu	a0,0(s9)
    80007438:	fe0518e3          	bnez	a0,80007428 <__printf+0x4d0>
    8000743c:	f5dff06f          	j	80007398 <__printf+0x440>
    80007440:	02500513          	li	a0,37
    80007444:	00000097          	auipc	ra,0x0
    80007448:	930080e7          	jalr	-1744(ra) # 80006d74 <consputc>
    8000744c:	000c8513          	mv	a0,s9
    80007450:	00000097          	auipc	ra,0x0
    80007454:	924080e7          	jalr	-1756(ra) # 80006d74 <consputc>
    80007458:	f41ff06f          	j	80007398 <__printf+0x440>
    8000745c:	02500513          	li	a0,37
    80007460:	00000097          	auipc	ra,0x0
    80007464:	914080e7          	jalr	-1772(ra) # 80006d74 <consputc>
    80007468:	f31ff06f          	j	80007398 <__printf+0x440>
    8000746c:	00030513          	mv	a0,t1
    80007470:	00000097          	auipc	ra,0x0
    80007474:	7bc080e7          	jalr	1980(ra) # 80007c2c <acquire>
    80007478:	b4dff06f          	j	80006fc4 <__printf+0x6c>
    8000747c:	40c0053b          	negw	a0,a2
    80007480:	00a00713          	li	a4,10
    80007484:	02e576bb          	remuw	a3,a0,a4
    80007488:	00002d97          	auipc	s11,0x2
    8000748c:	1b8d8d93          	addi	s11,s11,440 # 80009640 <digits>
    80007490:	ff700593          	li	a1,-9
    80007494:	02069693          	slli	a3,a3,0x20
    80007498:	0206d693          	srli	a3,a3,0x20
    8000749c:	00dd86b3          	add	a3,s11,a3
    800074a0:	0006c683          	lbu	a3,0(a3)
    800074a4:	02e557bb          	divuw	a5,a0,a4
    800074a8:	f8d40023          	sb	a3,-128(s0)
    800074ac:	10b65e63          	bge	a2,a1,800075c8 <__printf+0x670>
    800074b0:	06300593          	li	a1,99
    800074b4:	02e7f6bb          	remuw	a3,a5,a4
    800074b8:	02069693          	slli	a3,a3,0x20
    800074bc:	0206d693          	srli	a3,a3,0x20
    800074c0:	00dd86b3          	add	a3,s11,a3
    800074c4:	0006c683          	lbu	a3,0(a3)
    800074c8:	02e7d73b          	divuw	a4,a5,a4
    800074cc:	00200793          	li	a5,2
    800074d0:	f8d400a3          	sb	a3,-127(s0)
    800074d4:	bca5ece3          	bltu	a1,a0,800070ac <__printf+0x154>
    800074d8:	ce5ff06f          	j	800071bc <__printf+0x264>
    800074dc:	40e007bb          	negw	a5,a4
    800074e0:	00002d97          	auipc	s11,0x2
    800074e4:	160d8d93          	addi	s11,s11,352 # 80009640 <digits>
    800074e8:	00f7f693          	andi	a3,a5,15
    800074ec:	00dd86b3          	add	a3,s11,a3
    800074f0:	0006c583          	lbu	a1,0(a3)
    800074f4:	ff100613          	li	a2,-15
    800074f8:	0047d69b          	srliw	a3,a5,0x4
    800074fc:	f8b40023          	sb	a1,-128(s0)
    80007500:	0047d59b          	srliw	a1,a5,0x4
    80007504:	0ac75e63          	bge	a4,a2,800075c0 <__printf+0x668>
    80007508:	00f6f693          	andi	a3,a3,15
    8000750c:	00dd86b3          	add	a3,s11,a3
    80007510:	0006c603          	lbu	a2,0(a3)
    80007514:	00f00693          	li	a3,15
    80007518:	0087d79b          	srliw	a5,a5,0x8
    8000751c:	f8c400a3          	sb	a2,-127(s0)
    80007520:	d8b6e4e3          	bltu	a3,a1,800072a8 <__printf+0x350>
    80007524:	00200793          	li	a5,2
    80007528:	e2dff06f          	j	80007354 <__printf+0x3fc>
    8000752c:	00002c97          	auipc	s9,0x2
    80007530:	0f4c8c93          	addi	s9,s9,244 # 80009620 <CONSOLE_STATUS+0x610>
    80007534:	02800513          	li	a0,40
    80007538:	ef1ff06f          	j	80007428 <__printf+0x4d0>
    8000753c:	00700793          	li	a5,7
    80007540:	00600c93          	li	s9,6
    80007544:	e0dff06f          	j	80007350 <__printf+0x3f8>
    80007548:	00700793          	li	a5,7
    8000754c:	00600c93          	li	s9,6
    80007550:	c69ff06f          	j	800071b8 <__printf+0x260>
    80007554:	00300793          	li	a5,3
    80007558:	00200c93          	li	s9,2
    8000755c:	c5dff06f          	j	800071b8 <__printf+0x260>
    80007560:	00300793          	li	a5,3
    80007564:	00200c93          	li	s9,2
    80007568:	de9ff06f          	j	80007350 <__printf+0x3f8>
    8000756c:	00400793          	li	a5,4
    80007570:	00300c93          	li	s9,3
    80007574:	dddff06f          	j	80007350 <__printf+0x3f8>
    80007578:	00400793          	li	a5,4
    8000757c:	00300c93          	li	s9,3
    80007580:	c39ff06f          	j	800071b8 <__printf+0x260>
    80007584:	00500793          	li	a5,5
    80007588:	00400c93          	li	s9,4
    8000758c:	c2dff06f          	j	800071b8 <__printf+0x260>
    80007590:	00500793          	li	a5,5
    80007594:	00400c93          	li	s9,4
    80007598:	db9ff06f          	j	80007350 <__printf+0x3f8>
    8000759c:	00600793          	li	a5,6
    800075a0:	00500c93          	li	s9,5
    800075a4:	dadff06f          	j	80007350 <__printf+0x3f8>
    800075a8:	00600793          	li	a5,6
    800075ac:	00500c93          	li	s9,5
    800075b0:	c09ff06f          	j	800071b8 <__printf+0x260>
    800075b4:	00800793          	li	a5,8
    800075b8:	00700c93          	li	s9,7
    800075bc:	bfdff06f          	j	800071b8 <__printf+0x260>
    800075c0:	00100793          	li	a5,1
    800075c4:	d91ff06f          	j	80007354 <__printf+0x3fc>
    800075c8:	00100793          	li	a5,1
    800075cc:	bf1ff06f          	j	800071bc <__printf+0x264>
    800075d0:	00900793          	li	a5,9
    800075d4:	00800c93          	li	s9,8
    800075d8:	be1ff06f          	j	800071b8 <__printf+0x260>
    800075dc:	00002517          	auipc	a0,0x2
    800075e0:	04c50513          	addi	a0,a0,76 # 80009628 <CONSOLE_STATUS+0x618>
    800075e4:	00000097          	auipc	ra,0x0
    800075e8:	918080e7          	jalr	-1768(ra) # 80006efc <panic>

00000000800075ec <printfinit>:
    800075ec:	fe010113          	addi	sp,sp,-32
    800075f0:	00813823          	sd	s0,16(sp)
    800075f4:	00913423          	sd	s1,8(sp)
    800075f8:	00113c23          	sd	ra,24(sp)
    800075fc:	02010413          	addi	s0,sp,32
    80007600:	00009497          	auipc	s1,0x9
    80007604:	70048493          	addi	s1,s1,1792 # 80010d00 <pr>
    80007608:	00048513          	mv	a0,s1
    8000760c:	00002597          	auipc	a1,0x2
    80007610:	02c58593          	addi	a1,a1,44 # 80009638 <CONSOLE_STATUS+0x628>
    80007614:	00000097          	auipc	ra,0x0
    80007618:	5f4080e7          	jalr	1524(ra) # 80007c08 <initlock>
    8000761c:	01813083          	ld	ra,24(sp)
    80007620:	01013403          	ld	s0,16(sp)
    80007624:	0004ac23          	sw	zero,24(s1)
    80007628:	00813483          	ld	s1,8(sp)
    8000762c:	02010113          	addi	sp,sp,32
    80007630:	00008067          	ret

0000000080007634 <uartinit>:
    80007634:	ff010113          	addi	sp,sp,-16
    80007638:	00813423          	sd	s0,8(sp)
    8000763c:	01010413          	addi	s0,sp,16
    80007640:	100007b7          	lui	a5,0x10000
    80007644:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007648:	f8000713          	li	a4,-128
    8000764c:	00e781a3          	sb	a4,3(a5)
    80007650:	00300713          	li	a4,3
    80007654:	00e78023          	sb	a4,0(a5)
    80007658:	000780a3          	sb	zero,1(a5)
    8000765c:	00e781a3          	sb	a4,3(a5)
    80007660:	00700693          	li	a3,7
    80007664:	00d78123          	sb	a3,2(a5)
    80007668:	00e780a3          	sb	a4,1(a5)
    8000766c:	00813403          	ld	s0,8(sp)
    80007670:	01010113          	addi	sp,sp,16
    80007674:	00008067          	ret

0000000080007678 <uartputc>:
    80007678:	00004797          	auipc	a5,0x4
    8000767c:	3707a783          	lw	a5,880(a5) # 8000b9e8 <panicked>
    80007680:	00078463          	beqz	a5,80007688 <uartputc+0x10>
    80007684:	0000006f          	j	80007684 <uartputc+0xc>
    80007688:	fd010113          	addi	sp,sp,-48
    8000768c:	02813023          	sd	s0,32(sp)
    80007690:	00913c23          	sd	s1,24(sp)
    80007694:	01213823          	sd	s2,16(sp)
    80007698:	01313423          	sd	s3,8(sp)
    8000769c:	02113423          	sd	ra,40(sp)
    800076a0:	03010413          	addi	s0,sp,48
    800076a4:	00004917          	auipc	s2,0x4
    800076a8:	34c90913          	addi	s2,s2,844 # 8000b9f0 <uart_tx_r>
    800076ac:	00093783          	ld	a5,0(s2)
    800076b0:	00004497          	auipc	s1,0x4
    800076b4:	34848493          	addi	s1,s1,840 # 8000b9f8 <uart_tx_w>
    800076b8:	0004b703          	ld	a4,0(s1)
    800076bc:	02078693          	addi	a3,a5,32
    800076c0:	00050993          	mv	s3,a0
    800076c4:	02e69c63          	bne	a3,a4,800076fc <uartputc+0x84>
    800076c8:	00001097          	auipc	ra,0x1
    800076cc:	834080e7          	jalr	-1996(ra) # 80007efc <push_on>
    800076d0:	00093783          	ld	a5,0(s2)
    800076d4:	0004b703          	ld	a4,0(s1)
    800076d8:	02078793          	addi	a5,a5,32
    800076dc:	00e79463          	bne	a5,a4,800076e4 <uartputc+0x6c>
    800076e0:	0000006f          	j	800076e0 <uartputc+0x68>
    800076e4:	00001097          	auipc	ra,0x1
    800076e8:	88c080e7          	jalr	-1908(ra) # 80007f70 <pop_on>
    800076ec:	00093783          	ld	a5,0(s2)
    800076f0:	0004b703          	ld	a4,0(s1)
    800076f4:	02078693          	addi	a3,a5,32
    800076f8:	fce688e3          	beq	a3,a4,800076c8 <uartputc+0x50>
    800076fc:	01f77693          	andi	a3,a4,31
    80007700:	00009597          	auipc	a1,0x9
    80007704:	62058593          	addi	a1,a1,1568 # 80010d20 <uart_tx_buf>
    80007708:	00d586b3          	add	a3,a1,a3
    8000770c:	00170713          	addi	a4,a4,1
    80007710:	01368023          	sb	s3,0(a3)
    80007714:	00e4b023          	sd	a4,0(s1)
    80007718:	10000637          	lui	a2,0x10000
    8000771c:	02f71063          	bne	a4,a5,8000773c <uartputc+0xc4>
    80007720:	0340006f          	j	80007754 <uartputc+0xdc>
    80007724:	00074703          	lbu	a4,0(a4)
    80007728:	00f93023          	sd	a5,0(s2)
    8000772c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007730:	00093783          	ld	a5,0(s2)
    80007734:	0004b703          	ld	a4,0(s1)
    80007738:	00f70e63          	beq	a4,a5,80007754 <uartputc+0xdc>
    8000773c:	00564683          	lbu	a3,5(a2)
    80007740:	01f7f713          	andi	a4,a5,31
    80007744:	00e58733          	add	a4,a1,a4
    80007748:	0206f693          	andi	a3,a3,32
    8000774c:	00178793          	addi	a5,a5,1
    80007750:	fc069ae3          	bnez	a3,80007724 <uartputc+0xac>
    80007754:	02813083          	ld	ra,40(sp)
    80007758:	02013403          	ld	s0,32(sp)
    8000775c:	01813483          	ld	s1,24(sp)
    80007760:	01013903          	ld	s2,16(sp)
    80007764:	00813983          	ld	s3,8(sp)
    80007768:	03010113          	addi	sp,sp,48
    8000776c:	00008067          	ret

0000000080007770 <uartputc_sync>:
    80007770:	ff010113          	addi	sp,sp,-16
    80007774:	00813423          	sd	s0,8(sp)
    80007778:	01010413          	addi	s0,sp,16
    8000777c:	00004717          	auipc	a4,0x4
    80007780:	26c72703          	lw	a4,620(a4) # 8000b9e8 <panicked>
    80007784:	02071663          	bnez	a4,800077b0 <uartputc_sync+0x40>
    80007788:	00050793          	mv	a5,a0
    8000778c:	100006b7          	lui	a3,0x10000
    80007790:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007794:	02077713          	andi	a4,a4,32
    80007798:	fe070ce3          	beqz	a4,80007790 <uartputc_sync+0x20>
    8000779c:	0ff7f793          	andi	a5,a5,255
    800077a0:	00f68023          	sb	a5,0(a3)
    800077a4:	00813403          	ld	s0,8(sp)
    800077a8:	01010113          	addi	sp,sp,16
    800077ac:	00008067          	ret
    800077b0:	0000006f          	j	800077b0 <uartputc_sync+0x40>

00000000800077b4 <uartstart>:
    800077b4:	ff010113          	addi	sp,sp,-16
    800077b8:	00813423          	sd	s0,8(sp)
    800077bc:	01010413          	addi	s0,sp,16
    800077c0:	00004617          	auipc	a2,0x4
    800077c4:	23060613          	addi	a2,a2,560 # 8000b9f0 <uart_tx_r>
    800077c8:	00004517          	auipc	a0,0x4
    800077cc:	23050513          	addi	a0,a0,560 # 8000b9f8 <uart_tx_w>
    800077d0:	00063783          	ld	a5,0(a2)
    800077d4:	00053703          	ld	a4,0(a0)
    800077d8:	04f70263          	beq	a4,a5,8000781c <uartstart+0x68>
    800077dc:	100005b7          	lui	a1,0x10000
    800077e0:	00009817          	auipc	a6,0x9
    800077e4:	54080813          	addi	a6,a6,1344 # 80010d20 <uart_tx_buf>
    800077e8:	01c0006f          	j	80007804 <uartstart+0x50>
    800077ec:	0006c703          	lbu	a4,0(a3)
    800077f0:	00f63023          	sd	a5,0(a2)
    800077f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077f8:	00063783          	ld	a5,0(a2)
    800077fc:	00053703          	ld	a4,0(a0)
    80007800:	00f70e63          	beq	a4,a5,8000781c <uartstart+0x68>
    80007804:	01f7f713          	andi	a4,a5,31
    80007808:	00e806b3          	add	a3,a6,a4
    8000780c:	0055c703          	lbu	a4,5(a1)
    80007810:	00178793          	addi	a5,a5,1
    80007814:	02077713          	andi	a4,a4,32
    80007818:	fc071ae3          	bnez	a4,800077ec <uartstart+0x38>
    8000781c:	00813403          	ld	s0,8(sp)
    80007820:	01010113          	addi	sp,sp,16
    80007824:	00008067          	ret

0000000080007828 <uartgetc>:
    80007828:	ff010113          	addi	sp,sp,-16
    8000782c:	00813423          	sd	s0,8(sp)
    80007830:	01010413          	addi	s0,sp,16
    80007834:	10000737          	lui	a4,0x10000
    80007838:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000783c:	0017f793          	andi	a5,a5,1
    80007840:	00078c63          	beqz	a5,80007858 <uartgetc+0x30>
    80007844:	00074503          	lbu	a0,0(a4)
    80007848:	0ff57513          	andi	a0,a0,255
    8000784c:	00813403          	ld	s0,8(sp)
    80007850:	01010113          	addi	sp,sp,16
    80007854:	00008067          	ret
    80007858:	fff00513          	li	a0,-1
    8000785c:	ff1ff06f          	j	8000784c <uartgetc+0x24>

0000000080007860 <uartintr>:
    80007860:	100007b7          	lui	a5,0x10000
    80007864:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007868:	0017f793          	andi	a5,a5,1
    8000786c:	0a078463          	beqz	a5,80007914 <uartintr+0xb4>
    80007870:	fe010113          	addi	sp,sp,-32
    80007874:	00813823          	sd	s0,16(sp)
    80007878:	00913423          	sd	s1,8(sp)
    8000787c:	00113c23          	sd	ra,24(sp)
    80007880:	02010413          	addi	s0,sp,32
    80007884:	100004b7          	lui	s1,0x10000
    80007888:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000788c:	0ff57513          	andi	a0,a0,255
    80007890:	fffff097          	auipc	ra,0xfffff
    80007894:	534080e7          	jalr	1332(ra) # 80006dc4 <consoleintr>
    80007898:	0054c783          	lbu	a5,5(s1)
    8000789c:	0017f793          	andi	a5,a5,1
    800078a0:	fe0794e3          	bnez	a5,80007888 <uartintr+0x28>
    800078a4:	00004617          	auipc	a2,0x4
    800078a8:	14c60613          	addi	a2,a2,332 # 8000b9f0 <uart_tx_r>
    800078ac:	00004517          	auipc	a0,0x4
    800078b0:	14c50513          	addi	a0,a0,332 # 8000b9f8 <uart_tx_w>
    800078b4:	00063783          	ld	a5,0(a2)
    800078b8:	00053703          	ld	a4,0(a0)
    800078bc:	04f70263          	beq	a4,a5,80007900 <uartintr+0xa0>
    800078c0:	100005b7          	lui	a1,0x10000
    800078c4:	00009817          	auipc	a6,0x9
    800078c8:	45c80813          	addi	a6,a6,1116 # 80010d20 <uart_tx_buf>
    800078cc:	01c0006f          	j	800078e8 <uartintr+0x88>
    800078d0:	0006c703          	lbu	a4,0(a3)
    800078d4:	00f63023          	sd	a5,0(a2)
    800078d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078dc:	00063783          	ld	a5,0(a2)
    800078e0:	00053703          	ld	a4,0(a0)
    800078e4:	00f70e63          	beq	a4,a5,80007900 <uartintr+0xa0>
    800078e8:	01f7f713          	andi	a4,a5,31
    800078ec:	00e806b3          	add	a3,a6,a4
    800078f0:	0055c703          	lbu	a4,5(a1)
    800078f4:	00178793          	addi	a5,a5,1
    800078f8:	02077713          	andi	a4,a4,32
    800078fc:	fc071ae3          	bnez	a4,800078d0 <uartintr+0x70>
    80007900:	01813083          	ld	ra,24(sp)
    80007904:	01013403          	ld	s0,16(sp)
    80007908:	00813483          	ld	s1,8(sp)
    8000790c:	02010113          	addi	sp,sp,32
    80007910:	00008067          	ret
    80007914:	00004617          	auipc	a2,0x4
    80007918:	0dc60613          	addi	a2,a2,220 # 8000b9f0 <uart_tx_r>
    8000791c:	00004517          	auipc	a0,0x4
    80007920:	0dc50513          	addi	a0,a0,220 # 8000b9f8 <uart_tx_w>
    80007924:	00063783          	ld	a5,0(a2)
    80007928:	00053703          	ld	a4,0(a0)
    8000792c:	04f70263          	beq	a4,a5,80007970 <uartintr+0x110>
    80007930:	100005b7          	lui	a1,0x10000
    80007934:	00009817          	auipc	a6,0x9
    80007938:	3ec80813          	addi	a6,a6,1004 # 80010d20 <uart_tx_buf>
    8000793c:	01c0006f          	j	80007958 <uartintr+0xf8>
    80007940:	0006c703          	lbu	a4,0(a3)
    80007944:	00f63023          	sd	a5,0(a2)
    80007948:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000794c:	00063783          	ld	a5,0(a2)
    80007950:	00053703          	ld	a4,0(a0)
    80007954:	02f70063          	beq	a4,a5,80007974 <uartintr+0x114>
    80007958:	01f7f713          	andi	a4,a5,31
    8000795c:	00e806b3          	add	a3,a6,a4
    80007960:	0055c703          	lbu	a4,5(a1)
    80007964:	00178793          	addi	a5,a5,1
    80007968:	02077713          	andi	a4,a4,32
    8000796c:	fc071ae3          	bnez	a4,80007940 <uartintr+0xe0>
    80007970:	00008067          	ret
    80007974:	00008067          	ret

0000000080007978 <kinit>:
    80007978:	fc010113          	addi	sp,sp,-64
    8000797c:	02913423          	sd	s1,40(sp)
    80007980:	fffff7b7          	lui	a5,0xfffff
    80007984:	0000a497          	auipc	s1,0xa
    80007988:	3bb48493          	addi	s1,s1,955 # 80011d3f <end+0xfff>
    8000798c:	02813823          	sd	s0,48(sp)
    80007990:	01313c23          	sd	s3,24(sp)
    80007994:	00f4f4b3          	and	s1,s1,a5
    80007998:	02113c23          	sd	ra,56(sp)
    8000799c:	03213023          	sd	s2,32(sp)
    800079a0:	01413823          	sd	s4,16(sp)
    800079a4:	01513423          	sd	s5,8(sp)
    800079a8:	04010413          	addi	s0,sp,64
    800079ac:	000017b7          	lui	a5,0x1
    800079b0:	01100993          	li	s3,17
    800079b4:	00f487b3          	add	a5,s1,a5
    800079b8:	01b99993          	slli	s3,s3,0x1b
    800079bc:	06f9e063          	bltu	s3,a5,80007a1c <kinit+0xa4>
    800079c0:	00009a97          	auipc	s5,0x9
    800079c4:	380a8a93          	addi	s5,s5,896 # 80010d40 <end>
    800079c8:	0754ec63          	bltu	s1,s5,80007a40 <kinit+0xc8>
    800079cc:	0734fa63          	bgeu	s1,s3,80007a40 <kinit+0xc8>
    800079d0:	00088a37          	lui	s4,0x88
    800079d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800079d8:	00004917          	auipc	s2,0x4
    800079dc:	02890913          	addi	s2,s2,40 # 8000ba00 <kmem>
    800079e0:	00ca1a13          	slli	s4,s4,0xc
    800079e4:	0140006f          	j	800079f8 <kinit+0x80>
    800079e8:	000017b7          	lui	a5,0x1
    800079ec:	00f484b3          	add	s1,s1,a5
    800079f0:	0554e863          	bltu	s1,s5,80007a40 <kinit+0xc8>
    800079f4:	0534f663          	bgeu	s1,s3,80007a40 <kinit+0xc8>
    800079f8:	00001637          	lui	a2,0x1
    800079fc:	00100593          	li	a1,1
    80007a00:	00048513          	mv	a0,s1
    80007a04:	00000097          	auipc	ra,0x0
    80007a08:	5e4080e7          	jalr	1508(ra) # 80007fe8 <__memset>
    80007a0c:	00093783          	ld	a5,0(s2)
    80007a10:	00f4b023          	sd	a5,0(s1)
    80007a14:	00993023          	sd	s1,0(s2)
    80007a18:	fd4498e3          	bne	s1,s4,800079e8 <kinit+0x70>
    80007a1c:	03813083          	ld	ra,56(sp)
    80007a20:	03013403          	ld	s0,48(sp)
    80007a24:	02813483          	ld	s1,40(sp)
    80007a28:	02013903          	ld	s2,32(sp)
    80007a2c:	01813983          	ld	s3,24(sp)
    80007a30:	01013a03          	ld	s4,16(sp)
    80007a34:	00813a83          	ld	s5,8(sp)
    80007a38:	04010113          	addi	sp,sp,64
    80007a3c:	00008067          	ret
    80007a40:	00002517          	auipc	a0,0x2
    80007a44:	c1850513          	addi	a0,a0,-1000 # 80009658 <digits+0x18>
    80007a48:	fffff097          	auipc	ra,0xfffff
    80007a4c:	4b4080e7          	jalr	1204(ra) # 80006efc <panic>

0000000080007a50 <freerange>:
    80007a50:	fc010113          	addi	sp,sp,-64
    80007a54:	000017b7          	lui	a5,0x1
    80007a58:	02913423          	sd	s1,40(sp)
    80007a5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a60:	009504b3          	add	s1,a0,s1
    80007a64:	fffff537          	lui	a0,0xfffff
    80007a68:	02813823          	sd	s0,48(sp)
    80007a6c:	02113c23          	sd	ra,56(sp)
    80007a70:	03213023          	sd	s2,32(sp)
    80007a74:	01313c23          	sd	s3,24(sp)
    80007a78:	01413823          	sd	s4,16(sp)
    80007a7c:	01513423          	sd	s5,8(sp)
    80007a80:	01613023          	sd	s6,0(sp)
    80007a84:	04010413          	addi	s0,sp,64
    80007a88:	00a4f4b3          	and	s1,s1,a0
    80007a8c:	00f487b3          	add	a5,s1,a5
    80007a90:	06f5e463          	bltu	a1,a5,80007af8 <freerange+0xa8>
    80007a94:	00009a97          	auipc	s5,0x9
    80007a98:	2aca8a93          	addi	s5,s5,684 # 80010d40 <end>
    80007a9c:	0954e263          	bltu	s1,s5,80007b20 <freerange+0xd0>
    80007aa0:	01100993          	li	s3,17
    80007aa4:	01b99993          	slli	s3,s3,0x1b
    80007aa8:	0734fc63          	bgeu	s1,s3,80007b20 <freerange+0xd0>
    80007aac:	00058a13          	mv	s4,a1
    80007ab0:	00004917          	auipc	s2,0x4
    80007ab4:	f5090913          	addi	s2,s2,-176 # 8000ba00 <kmem>
    80007ab8:	00002b37          	lui	s6,0x2
    80007abc:	0140006f          	j	80007ad0 <freerange+0x80>
    80007ac0:	000017b7          	lui	a5,0x1
    80007ac4:	00f484b3          	add	s1,s1,a5
    80007ac8:	0554ec63          	bltu	s1,s5,80007b20 <freerange+0xd0>
    80007acc:	0534fa63          	bgeu	s1,s3,80007b20 <freerange+0xd0>
    80007ad0:	00001637          	lui	a2,0x1
    80007ad4:	00100593          	li	a1,1
    80007ad8:	00048513          	mv	a0,s1
    80007adc:	00000097          	auipc	ra,0x0
    80007ae0:	50c080e7          	jalr	1292(ra) # 80007fe8 <__memset>
    80007ae4:	00093703          	ld	a4,0(s2)
    80007ae8:	016487b3          	add	a5,s1,s6
    80007aec:	00e4b023          	sd	a4,0(s1)
    80007af0:	00993023          	sd	s1,0(s2)
    80007af4:	fcfa76e3          	bgeu	s4,a5,80007ac0 <freerange+0x70>
    80007af8:	03813083          	ld	ra,56(sp)
    80007afc:	03013403          	ld	s0,48(sp)
    80007b00:	02813483          	ld	s1,40(sp)
    80007b04:	02013903          	ld	s2,32(sp)
    80007b08:	01813983          	ld	s3,24(sp)
    80007b0c:	01013a03          	ld	s4,16(sp)
    80007b10:	00813a83          	ld	s5,8(sp)
    80007b14:	00013b03          	ld	s6,0(sp)
    80007b18:	04010113          	addi	sp,sp,64
    80007b1c:	00008067          	ret
    80007b20:	00002517          	auipc	a0,0x2
    80007b24:	b3850513          	addi	a0,a0,-1224 # 80009658 <digits+0x18>
    80007b28:	fffff097          	auipc	ra,0xfffff
    80007b2c:	3d4080e7          	jalr	980(ra) # 80006efc <panic>

0000000080007b30 <kfree>:
    80007b30:	fe010113          	addi	sp,sp,-32
    80007b34:	00813823          	sd	s0,16(sp)
    80007b38:	00113c23          	sd	ra,24(sp)
    80007b3c:	00913423          	sd	s1,8(sp)
    80007b40:	02010413          	addi	s0,sp,32
    80007b44:	03451793          	slli	a5,a0,0x34
    80007b48:	04079c63          	bnez	a5,80007ba0 <kfree+0x70>
    80007b4c:	00009797          	auipc	a5,0x9
    80007b50:	1f478793          	addi	a5,a5,500 # 80010d40 <end>
    80007b54:	00050493          	mv	s1,a0
    80007b58:	04f56463          	bltu	a0,a5,80007ba0 <kfree+0x70>
    80007b5c:	01100793          	li	a5,17
    80007b60:	01b79793          	slli	a5,a5,0x1b
    80007b64:	02f57e63          	bgeu	a0,a5,80007ba0 <kfree+0x70>
    80007b68:	00001637          	lui	a2,0x1
    80007b6c:	00100593          	li	a1,1
    80007b70:	00000097          	auipc	ra,0x0
    80007b74:	478080e7          	jalr	1144(ra) # 80007fe8 <__memset>
    80007b78:	00004797          	auipc	a5,0x4
    80007b7c:	e8878793          	addi	a5,a5,-376 # 8000ba00 <kmem>
    80007b80:	0007b703          	ld	a4,0(a5)
    80007b84:	01813083          	ld	ra,24(sp)
    80007b88:	01013403          	ld	s0,16(sp)
    80007b8c:	00e4b023          	sd	a4,0(s1)
    80007b90:	0097b023          	sd	s1,0(a5)
    80007b94:	00813483          	ld	s1,8(sp)
    80007b98:	02010113          	addi	sp,sp,32
    80007b9c:	00008067          	ret
    80007ba0:	00002517          	auipc	a0,0x2
    80007ba4:	ab850513          	addi	a0,a0,-1352 # 80009658 <digits+0x18>
    80007ba8:	fffff097          	auipc	ra,0xfffff
    80007bac:	354080e7          	jalr	852(ra) # 80006efc <panic>

0000000080007bb0 <kalloc>:
    80007bb0:	fe010113          	addi	sp,sp,-32
    80007bb4:	00813823          	sd	s0,16(sp)
    80007bb8:	00913423          	sd	s1,8(sp)
    80007bbc:	00113c23          	sd	ra,24(sp)
    80007bc0:	02010413          	addi	s0,sp,32
    80007bc4:	00004797          	auipc	a5,0x4
    80007bc8:	e3c78793          	addi	a5,a5,-452 # 8000ba00 <kmem>
    80007bcc:	0007b483          	ld	s1,0(a5)
    80007bd0:	02048063          	beqz	s1,80007bf0 <kalloc+0x40>
    80007bd4:	0004b703          	ld	a4,0(s1)
    80007bd8:	00001637          	lui	a2,0x1
    80007bdc:	00500593          	li	a1,5
    80007be0:	00048513          	mv	a0,s1
    80007be4:	00e7b023          	sd	a4,0(a5)
    80007be8:	00000097          	auipc	ra,0x0
    80007bec:	400080e7          	jalr	1024(ra) # 80007fe8 <__memset>
    80007bf0:	01813083          	ld	ra,24(sp)
    80007bf4:	01013403          	ld	s0,16(sp)
    80007bf8:	00048513          	mv	a0,s1
    80007bfc:	00813483          	ld	s1,8(sp)
    80007c00:	02010113          	addi	sp,sp,32
    80007c04:	00008067          	ret

0000000080007c08 <initlock>:
    80007c08:	ff010113          	addi	sp,sp,-16
    80007c0c:	00813423          	sd	s0,8(sp)
    80007c10:	01010413          	addi	s0,sp,16
    80007c14:	00813403          	ld	s0,8(sp)
    80007c18:	00b53423          	sd	a1,8(a0)
    80007c1c:	00052023          	sw	zero,0(a0)
    80007c20:	00053823          	sd	zero,16(a0)
    80007c24:	01010113          	addi	sp,sp,16
    80007c28:	00008067          	ret

0000000080007c2c <acquire>:
    80007c2c:	fe010113          	addi	sp,sp,-32
    80007c30:	00813823          	sd	s0,16(sp)
    80007c34:	00913423          	sd	s1,8(sp)
    80007c38:	00113c23          	sd	ra,24(sp)
    80007c3c:	01213023          	sd	s2,0(sp)
    80007c40:	02010413          	addi	s0,sp,32
    80007c44:	00050493          	mv	s1,a0
    80007c48:	10002973          	csrr	s2,sstatus
    80007c4c:	100027f3          	csrr	a5,sstatus
    80007c50:	ffd7f793          	andi	a5,a5,-3
    80007c54:	10079073          	csrw	sstatus,a5
    80007c58:	fffff097          	auipc	ra,0xfffff
    80007c5c:	8ec080e7          	jalr	-1812(ra) # 80006544 <mycpu>
    80007c60:	07852783          	lw	a5,120(a0)
    80007c64:	06078e63          	beqz	a5,80007ce0 <acquire+0xb4>
    80007c68:	fffff097          	auipc	ra,0xfffff
    80007c6c:	8dc080e7          	jalr	-1828(ra) # 80006544 <mycpu>
    80007c70:	07852783          	lw	a5,120(a0)
    80007c74:	0004a703          	lw	a4,0(s1)
    80007c78:	0017879b          	addiw	a5,a5,1
    80007c7c:	06f52c23          	sw	a5,120(a0)
    80007c80:	04071063          	bnez	a4,80007cc0 <acquire+0x94>
    80007c84:	00100713          	li	a4,1
    80007c88:	00070793          	mv	a5,a4
    80007c8c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c90:	0007879b          	sext.w	a5,a5
    80007c94:	fe079ae3          	bnez	a5,80007c88 <acquire+0x5c>
    80007c98:	0ff0000f          	fence
    80007c9c:	fffff097          	auipc	ra,0xfffff
    80007ca0:	8a8080e7          	jalr	-1880(ra) # 80006544 <mycpu>
    80007ca4:	01813083          	ld	ra,24(sp)
    80007ca8:	01013403          	ld	s0,16(sp)
    80007cac:	00a4b823          	sd	a0,16(s1)
    80007cb0:	00013903          	ld	s2,0(sp)
    80007cb4:	00813483          	ld	s1,8(sp)
    80007cb8:	02010113          	addi	sp,sp,32
    80007cbc:	00008067          	ret
    80007cc0:	0104b903          	ld	s2,16(s1)
    80007cc4:	fffff097          	auipc	ra,0xfffff
    80007cc8:	880080e7          	jalr	-1920(ra) # 80006544 <mycpu>
    80007ccc:	faa91ce3          	bne	s2,a0,80007c84 <acquire+0x58>
    80007cd0:	00002517          	auipc	a0,0x2
    80007cd4:	99050513          	addi	a0,a0,-1648 # 80009660 <digits+0x20>
    80007cd8:	fffff097          	auipc	ra,0xfffff
    80007cdc:	224080e7          	jalr	548(ra) # 80006efc <panic>
    80007ce0:	00195913          	srli	s2,s2,0x1
    80007ce4:	fffff097          	auipc	ra,0xfffff
    80007ce8:	860080e7          	jalr	-1952(ra) # 80006544 <mycpu>
    80007cec:	00197913          	andi	s2,s2,1
    80007cf0:	07252e23          	sw	s2,124(a0)
    80007cf4:	f75ff06f          	j	80007c68 <acquire+0x3c>

0000000080007cf8 <release>:
    80007cf8:	fe010113          	addi	sp,sp,-32
    80007cfc:	00813823          	sd	s0,16(sp)
    80007d00:	00113c23          	sd	ra,24(sp)
    80007d04:	00913423          	sd	s1,8(sp)
    80007d08:	01213023          	sd	s2,0(sp)
    80007d0c:	02010413          	addi	s0,sp,32
    80007d10:	00052783          	lw	a5,0(a0)
    80007d14:	00079a63          	bnez	a5,80007d28 <release+0x30>
    80007d18:	00002517          	auipc	a0,0x2
    80007d1c:	95050513          	addi	a0,a0,-1712 # 80009668 <digits+0x28>
    80007d20:	fffff097          	auipc	ra,0xfffff
    80007d24:	1dc080e7          	jalr	476(ra) # 80006efc <panic>
    80007d28:	01053903          	ld	s2,16(a0)
    80007d2c:	00050493          	mv	s1,a0
    80007d30:	fffff097          	auipc	ra,0xfffff
    80007d34:	814080e7          	jalr	-2028(ra) # 80006544 <mycpu>
    80007d38:	fea910e3          	bne	s2,a0,80007d18 <release+0x20>
    80007d3c:	0004b823          	sd	zero,16(s1)
    80007d40:	0ff0000f          	fence
    80007d44:	0f50000f          	fence	iorw,ow
    80007d48:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d4c:	ffffe097          	auipc	ra,0xffffe
    80007d50:	7f8080e7          	jalr	2040(ra) # 80006544 <mycpu>
    80007d54:	100027f3          	csrr	a5,sstatus
    80007d58:	0027f793          	andi	a5,a5,2
    80007d5c:	04079a63          	bnez	a5,80007db0 <release+0xb8>
    80007d60:	07852783          	lw	a5,120(a0)
    80007d64:	02f05e63          	blez	a5,80007da0 <release+0xa8>
    80007d68:	fff7871b          	addiw	a4,a5,-1
    80007d6c:	06e52c23          	sw	a4,120(a0)
    80007d70:	00071c63          	bnez	a4,80007d88 <release+0x90>
    80007d74:	07c52783          	lw	a5,124(a0)
    80007d78:	00078863          	beqz	a5,80007d88 <release+0x90>
    80007d7c:	100027f3          	csrr	a5,sstatus
    80007d80:	0027e793          	ori	a5,a5,2
    80007d84:	10079073          	csrw	sstatus,a5
    80007d88:	01813083          	ld	ra,24(sp)
    80007d8c:	01013403          	ld	s0,16(sp)
    80007d90:	00813483          	ld	s1,8(sp)
    80007d94:	00013903          	ld	s2,0(sp)
    80007d98:	02010113          	addi	sp,sp,32
    80007d9c:	00008067          	ret
    80007da0:	00002517          	auipc	a0,0x2
    80007da4:	8e850513          	addi	a0,a0,-1816 # 80009688 <digits+0x48>
    80007da8:	fffff097          	auipc	ra,0xfffff
    80007dac:	154080e7          	jalr	340(ra) # 80006efc <panic>
    80007db0:	00002517          	auipc	a0,0x2
    80007db4:	8c050513          	addi	a0,a0,-1856 # 80009670 <digits+0x30>
    80007db8:	fffff097          	auipc	ra,0xfffff
    80007dbc:	144080e7          	jalr	324(ra) # 80006efc <panic>

0000000080007dc0 <holding>:
    80007dc0:	00052783          	lw	a5,0(a0)
    80007dc4:	00079663          	bnez	a5,80007dd0 <holding+0x10>
    80007dc8:	00000513          	li	a0,0
    80007dcc:	00008067          	ret
    80007dd0:	fe010113          	addi	sp,sp,-32
    80007dd4:	00813823          	sd	s0,16(sp)
    80007dd8:	00913423          	sd	s1,8(sp)
    80007ddc:	00113c23          	sd	ra,24(sp)
    80007de0:	02010413          	addi	s0,sp,32
    80007de4:	01053483          	ld	s1,16(a0)
    80007de8:	ffffe097          	auipc	ra,0xffffe
    80007dec:	75c080e7          	jalr	1884(ra) # 80006544 <mycpu>
    80007df0:	01813083          	ld	ra,24(sp)
    80007df4:	01013403          	ld	s0,16(sp)
    80007df8:	40a48533          	sub	a0,s1,a0
    80007dfc:	00153513          	seqz	a0,a0
    80007e00:	00813483          	ld	s1,8(sp)
    80007e04:	02010113          	addi	sp,sp,32
    80007e08:	00008067          	ret

0000000080007e0c <push_off>:
    80007e0c:	fe010113          	addi	sp,sp,-32
    80007e10:	00813823          	sd	s0,16(sp)
    80007e14:	00113c23          	sd	ra,24(sp)
    80007e18:	00913423          	sd	s1,8(sp)
    80007e1c:	02010413          	addi	s0,sp,32
    80007e20:	100024f3          	csrr	s1,sstatus
    80007e24:	100027f3          	csrr	a5,sstatus
    80007e28:	ffd7f793          	andi	a5,a5,-3
    80007e2c:	10079073          	csrw	sstatus,a5
    80007e30:	ffffe097          	auipc	ra,0xffffe
    80007e34:	714080e7          	jalr	1812(ra) # 80006544 <mycpu>
    80007e38:	07852783          	lw	a5,120(a0)
    80007e3c:	02078663          	beqz	a5,80007e68 <push_off+0x5c>
    80007e40:	ffffe097          	auipc	ra,0xffffe
    80007e44:	704080e7          	jalr	1796(ra) # 80006544 <mycpu>
    80007e48:	07852783          	lw	a5,120(a0)
    80007e4c:	01813083          	ld	ra,24(sp)
    80007e50:	01013403          	ld	s0,16(sp)
    80007e54:	0017879b          	addiw	a5,a5,1
    80007e58:	06f52c23          	sw	a5,120(a0)
    80007e5c:	00813483          	ld	s1,8(sp)
    80007e60:	02010113          	addi	sp,sp,32
    80007e64:	00008067          	ret
    80007e68:	0014d493          	srli	s1,s1,0x1
    80007e6c:	ffffe097          	auipc	ra,0xffffe
    80007e70:	6d8080e7          	jalr	1752(ra) # 80006544 <mycpu>
    80007e74:	0014f493          	andi	s1,s1,1
    80007e78:	06952e23          	sw	s1,124(a0)
    80007e7c:	fc5ff06f          	j	80007e40 <push_off+0x34>

0000000080007e80 <pop_off>:
    80007e80:	ff010113          	addi	sp,sp,-16
    80007e84:	00813023          	sd	s0,0(sp)
    80007e88:	00113423          	sd	ra,8(sp)
    80007e8c:	01010413          	addi	s0,sp,16
    80007e90:	ffffe097          	auipc	ra,0xffffe
    80007e94:	6b4080e7          	jalr	1716(ra) # 80006544 <mycpu>
    80007e98:	100027f3          	csrr	a5,sstatus
    80007e9c:	0027f793          	andi	a5,a5,2
    80007ea0:	04079663          	bnez	a5,80007eec <pop_off+0x6c>
    80007ea4:	07852783          	lw	a5,120(a0)
    80007ea8:	02f05a63          	blez	a5,80007edc <pop_off+0x5c>
    80007eac:	fff7871b          	addiw	a4,a5,-1
    80007eb0:	06e52c23          	sw	a4,120(a0)
    80007eb4:	00071c63          	bnez	a4,80007ecc <pop_off+0x4c>
    80007eb8:	07c52783          	lw	a5,124(a0)
    80007ebc:	00078863          	beqz	a5,80007ecc <pop_off+0x4c>
    80007ec0:	100027f3          	csrr	a5,sstatus
    80007ec4:	0027e793          	ori	a5,a5,2
    80007ec8:	10079073          	csrw	sstatus,a5
    80007ecc:	00813083          	ld	ra,8(sp)
    80007ed0:	00013403          	ld	s0,0(sp)
    80007ed4:	01010113          	addi	sp,sp,16
    80007ed8:	00008067          	ret
    80007edc:	00001517          	auipc	a0,0x1
    80007ee0:	7ac50513          	addi	a0,a0,1964 # 80009688 <digits+0x48>
    80007ee4:	fffff097          	auipc	ra,0xfffff
    80007ee8:	018080e7          	jalr	24(ra) # 80006efc <panic>
    80007eec:	00001517          	auipc	a0,0x1
    80007ef0:	78450513          	addi	a0,a0,1924 # 80009670 <digits+0x30>
    80007ef4:	fffff097          	auipc	ra,0xfffff
    80007ef8:	008080e7          	jalr	8(ra) # 80006efc <panic>

0000000080007efc <push_on>:
    80007efc:	fe010113          	addi	sp,sp,-32
    80007f00:	00813823          	sd	s0,16(sp)
    80007f04:	00113c23          	sd	ra,24(sp)
    80007f08:	00913423          	sd	s1,8(sp)
    80007f0c:	02010413          	addi	s0,sp,32
    80007f10:	100024f3          	csrr	s1,sstatus
    80007f14:	100027f3          	csrr	a5,sstatus
    80007f18:	0027e793          	ori	a5,a5,2
    80007f1c:	10079073          	csrw	sstatus,a5
    80007f20:	ffffe097          	auipc	ra,0xffffe
    80007f24:	624080e7          	jalr	1572(ra) # 80006544 <mycpu>
    80007f28:	07852783          	lw	a5,120(a0)
    80007f2c:	02078663          	beqz	a5,80007f58 <push_on+0x5c>
    80007f30:	ffffe097          	auipc	ra,0xffffe
    80007f34:	614080e7          	jalr	1556(ra) # 80006544 <mycpu>
    80007f38:	07852783          	lw	a5,120(a0)
    80007f3c:	01813083          	ld	ra,24(sp)
    80007f40:	01013403          	ld	s0,16(sp)
    80007f44:	0017879b          	addiw	a5,a5,1
    80007f48:	06f52c23          	sw	a5,120(a0)
    80007f4c:	00813483          	ld	s1,8(sp)
    80007f50:	02010113          	addi	sp,sp,32
    80007f54:	00008067          	ret
    80007f58:	0014d493          	srli	s1,s1,0x1
    80007f5c:	ffffe097          	auipc	ra,0xffffe
    80007f60:	5e8080e7          	jalr	1512(ra) # 80006544 <mycpu>
    80007f64:	0014f493          	andi	s1,s1,1
    80007f68:	06952e23          	sw	s1,124(a0)
    80007f6c:	fc5ff06f          	j	80007f30 <push_on+0x34>

0000000080007f70 <pop_on>:
    80007f70:	ff010113          	addi	sp,sp,-16
    80007f74:	00813023          	sd	s0,0(sp)
    80007f78:	00113423          	sd	ra,8(sp)
    80007f7c:	01010413          	addi	s0,sp,16
    80007f80:	ffffe097          	auipc	ra,0xffffe
    80007f84:	5c4080e7          	jalr	1476(ra) # 80006544 <mycpu>
    80007f88:	100027f3          	csrr	a5,sstatus
    80007f8c:	0027f793          	andi	a5,a5,2
    80007f90:	04078463          	beqz	a5,80007fd8 <pop_on+0x68>
    80007f94:	07852783          	lw	a5,120(a0)
    80007f98:	02f05863          	blez	a5,80007fc8 <pop_on+0x58>
    80007f9c:	fff7879b          	addiw	a5,a5,-1
    80007fa0:	06f52c23          	sw	a5,120(a0)
    80007fa4:	07853783          	ld	a5,120(a0)
    80007fa8:	00079863          	bnez	a5,80007fb8 <pop_on+0x48>
    80007fac:	100027f3          	csrr	a5,sstatus
    80007fb0:	ffd7f793          	andi	a5,a5,-3
    80007fb4:	10079073          	csrw	sstatus,a5
    80007fb8:	00813083          	ld	ra,8(sp)
    80007fbc:	00013403          	ld	s0,0(sp)
    80007fc0:	01010113          	addi	sp,sp,16
    80007fc4:	00008067          	ret
    80007fc8:	00001517          	auipc	a0,0x1
    80007fcc:	6e850513          	addi	a0,a0,1768 # 800096b0 <digits+0x70>
    80007fd0:	fffff097          	auipc	ra,0xfffff
    80007fd4:	f2c080e7          	jalr	-212(ra) # 80006efc <panic>
    80007fd8:	00001517          	auipc	a0,0x1
    80007fdc:	6b850513          	addi	a0,a0,1720 # 80009690 <digits+0x50>
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	f1c080e7          	jalr	-228(ra) # 80006efc <panic>

0000000080007fe8 <__memset>:
    80007fe8:	ff010113          	addi	sp,sp,-16
    80007fec:	00813423          	sd	s0,8(sp)
    80007ff0:	01010413          	addi	s0,sp,16
    80007ff4:	1a060e63          	beqz	a2,800081b0 <__memset+0x1c8>
    80007ff8:	40a007b3          	neg	a5,a0
    80007ffc:	0077f793          	andi	a5,a5,7
    80008000:	00778693          	addi	a3,a5,7
    80008004:	00b00813          	li	a6,11
    80008008:	0ff5f593          	andi	a1,a1,255
    8000800c:	fff6071b          	addiw	a4,a2,-1
    80008010:	1b06e663          	bltu	a3,a6,800081bc <__memset+0x1d4>
    80008014:	1cd76463          	bltu	a4,a3,800081dc <__memset+0x1f4>
    80008018:	1a078e63          	beqz	a5,800081d4 <__memset+0x1ec>
    8000801c:	00b50023          	sb	a1,0(a0)
    80008020:	00100713          	li	a4,1
    80008024:	1ae78463          	beq	a5,a4,800081cc <__memset+0x1e4>
    80008028:	00b500a3          	sb	a1,1(a0)
    8000802c:	00200713          	li	a4,2
    80008030:	1ae78a63          	beq	a5,a4,800081e4 <__memset+0x1fc>
    80008034:	00b50123          	sb	a1,2(a0)
    80008038:	00300713          	li	a4,3
    8000803c:	18e78463          	beq	a5,a4,800081c4 <__memset+0x1dc>
    80008040:	00b501a3          	sb	a1,3(a0)
    80008044:	00400713          	li	a4,4
    80008048:	1ae78263          	beq	a5,a4,800081ec <__memset+0x204>
    8000804c:	00b50223          	sb	a1,4(a0)
    80008050:	00500713          	li	a4,5
    80008054:	1ae78063          	beq	a5,a4,800081f4 <__memset+0x20c>
    80008058:	00b502a3          	sb	a1,5(a0)
    8000805c:	00700713          	li	a4,7
    80008060:	18e79e63          	bne	a5,a4,800081fc <__memset+0x214>
    80008064:	00b50323          	sb	a1,6(a0)
    80008068:	00700e93          	li	t4,7
    8000806c:	00859713          	slli	a4,a1,0x8
    80008070:	00e5e733          	or	a4,a1,a4
    80008074:	01059e13          	slli	t3,a1,0x10
    80008078:	01c76e33          	or	t3,a4,t3
    8000807c:	01859313          	slli	t1,a1,0x18
    80008080:	006e6333          	or	t1,t3,t1
    80008084:	02059893          	slli	a7,a1,0x20
    80008088:	40f60e3b          	subw	t3,a2,a5
    8000808c:	011368b3          	or	a7,t1,a7
    80008090:	02859813          	slli	a6,a1,0x28
    80008094:	0108e833          	or	a6,a7,a6
    80008098:	03059693          	slli	a3,a1,0x30
    8000809c:	003e589b          	srliw	a7,t3,0x3
    800080a0:	00d866b3          	or	a3,a6,a3
    800080a4:	03859713          	slli	a4,a1,0x38
    800080a8:	00389813          	slli	a6,a7,0x3
    800080ac:	00f507b3          	add	a5,a0,a5
    800080b0:	00e6e733          	or	a4,a3,a4
    800080b4:	000e089b          	sext.w	a7,t3
    800080b8:	00f806b3          	add	a3,a6,a5
    800080bc:	00e7b023          	sd	a4,0(a5)
    800080c0:	00878793          	addi	a5,a5,8
    800080c4:	fed79ce3          	bne	a5,a3,800080bc <__memset+0xd4>
    800080c8:	ff8e7793          	andi	a5,t3,-8
    800080cc:	0007871b          	sext.w	a4,a5
    800080d0:	01d787bb          	addw	a5,a5,t4
    800080d4:	0ce88e63          	beq	a7,a4,800081b0 <__memset+0x1c8>
    800080d8:	00f50733          	add	a4,a0,a5
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0017871b          	addiw	a4,a5,1
    800080e4:	0cc77663          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0027871b          	addiw	a4,a5,2
    800080f4:	0ac77e63          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0037871b          	addiw	a4,a5,3
    80008104:	0ac77663          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0047871b          	addiw	a4,a5,4
    80008114:	08c77e63          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	0057871b          	addiw	a4,a5,5
    80008124:	08c77663          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	0067871b          	addiw	a4,a5,6
    80008134:	06c77e63          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	0077871b          	addiw	a4,a5,7
    80008144:	06c77663          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	0087871b          	addiw	a4,a5,8
    80008154:	04c77e63          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	0097871b          	addiw	a4,a5,9
    80008164:	04c77663          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008168:	00e50733          	add	a4,a0,a4
    8000816c:	00b70023          	sb	a1,0(a4)
    80008170:	00a7871b          	addiw	a4,a5,10
    80008174:	02c77e63          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008178:	00e50733          	add	a4,a0,a4
    8000817c:	00b70023          	sb	a1,0(a4)
    80008180:	00b7871b          	addiw	a4,a5,11
    80008184:	02c77663          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008188:	00e50733          	add	a4,a0,a4
    8000818c:	00b70023          	sb	a1,0(a4)
    80008190:	00c7871b          	addiw	a4,a5,12
    80008194:	00c77e63          	bgeu	a4,a2,800081b0 <__memset+0x1c8>
    80008198:	00e50733          	add	a4,a0,a4
    8000819c:	00b70023          	sb	a1,0(a4)
    800081a0:	00d7879b          	addiw	a5,a5,13
    800081a4:	00c7f663          	bgeu	a5,a2,800081b0 <__memset+0x1c8>
    800081a8:	00f507b3          	add	a5,a0,a5
    800081ac:	00b78023          	sb	a1,0(a5)
    800081b0:	00813403          	ld	s0,8(sp)
    800081b4:	01010113          	addi	sp,sp,16
    800081b8:	00008067          	ret
    800081bc:	00b00693          	li	a3,11
    800081c0:	e55ff06f          	j	80008014 <__memset+0x2c>
    800081c4:	00300e93          	li	t4,3
    800081c8:	ea5ff06f          	j	8000806c <__memset+0x84>
    800081cc:	00100e93          	li	t4,1
    800081d0:	e9dff06f          	j	8000806c <__memset+0x84>
    800081d4:	00000e93          	li	t4,0
    800081d8:	e95ff06f          	j	8000806c <__memset+0x84>
    800081dc:	00000793          	li	a5,0
    800081e0:	ef9ff06f          	j	800080d8 <__memset+0xf0>
    800081e4:	00200e93          	li	t4,2
    800081e8:	e85ff06f          	j	8000806c <__memset+0x84>
    800081ec:	00400e93          	li	t4,4
    800081f0:	e7dff06f          	j	8000806c <__memset+0x84>
    800081f4:	00500e93          	li	t4,5
    800081f8:	e75ff06f          	j	8000806c <__memset+0x84>
    800081fc:	00600e93          	li	t4,6
    80008200:	e6dff06f          	j	8000806c <__memset+0x84>

0000000080008204 <__memmove>:
    80008204:	ff010113          	addi	sp,sp,-16
    80008208:	00813423          	sd	s0,8(sp)
    8000820c:	01010413          	addi	s0,sp,16
    80008210:	0e060863          	beqz	a2,80008300 <__memmove+0xfc>
    80008214:	fff6069b          	addiw	a3,a2,-1
    80008218:	0006881b          	sext.w	a6,a3
    8000821c:	0ea5e863          	bltu	a1,a0,8000830c <__memmove+0x108>
    80008220:	00758713          	addi	a4,a1,7
    80008224:	00a5e7b3          	or	a5,a1,a0
    80008228:	40a70733          	sub	a4,a4,a0
    8000822c:	0077f793          	andi	a5,a5,7
    80008230:	00f73713          	sltiu	a4,a4,15
    80008234:	00174713          	xori	a4,a4,1
    80008238:	0017b793          	seqz	a5,a5
    8000823c:	00e7f7b3          	and	a5,a5,a4
    80008240:	10078863          	beqz	a5,80008350 <__memmove+0x14c>
    80008244:	00900793          	li	a5,9
    80008248:	1107f463          	bgeu	a5,a6,80008350 <__memmove+0x14c>
    8000824c:	0036581b          	srliw	a6,a2,0x3
    80008250:	fff8081b          	addiw	a6,a6,-1
    80008254:	02081813          	slli	a6,a6,0x20
    80008258:	01d85893          	srli	a7,a6,0x1d
    8000825c:	00858813          	addi	a6,a1,8
    80008260:	00058793          	mv	a5,a1
    80008264:	00050713          	mv	a4,a0
    80008268:	01088833          	add	a6,a7,a6
    8000826c:	0007b883          	ld	a7,0(a5)
    80008270:	00878793          	addi	a5,a5,8
    80008274:	00870713          	addi	a4,a4,8
    80008278:	ff173c23          	sd	a7,-8(a4)
    8000827c:	ff0798e3          	bne	a5,a6,8000826c <__memmove+0x68>
    80008280:	ff867713          	andi	a4,a2,-8
    80008284:	02071793          	slli	a5,a4,0x20
    80008288:	0207d793          	srli	a5,a5,0x20
    8000828c:	00f585b3          	add	a1,a1,a5
    80008290:	40e686bb          	subw	a3,a3,a4
    80008294:	00f507b3          	add	a5,a0,a5
    80008298:	06e60463          	beq	a2,a4,80008300 <__memmove+0xfc>
    8000829c:	0005c703          	lbu	a4,0(a1)
    800082a0:	00e78023          	sb	a4,0(a5)
    800082a4:	04068e63          	beqz	a3,80008300 <__memmove+0xfc>
    800082a8:	0015c603          	lbu	a2,1(a1)
    800082ac:	00100713          	li	a4,1
    800082b0:	00c780a3          	sb	a2,1(a5)
    800082b4:	04e68663          	beq	a3,a4,80008300 <__memmove+0xfc>
    800082b8:	0025c603          	lbu	a2,2(a1)
    800082bc:	00200713          	li	a4,2
    800082c0:	00c78123          	sb	a2,2(a5)
    800082c4:	02e68e63          	beq	a3,a4,80008300 <__memmove+0xfc>
    800082c8:	0035c603          	lbu	a2,3(a1)
    800082cc:	00300713          	li	a4,3
    800082d0:	00c781a3          	sb	a2,3(a5)
    800082d4:	02e68663          	beq	a3,a4,80008300 <__memmove+0xfc>
    800082d8:	0045c603          	lbu	a2,4(a1)
    800082dc:	00400713          	li	a4,4
    800082e0:	00c78223          	sb	a2,4(a5)
    800082e4:	00e68e63          	beq	a3,a4,80008300 <__memmove+0xfc>
    800082e8:	0055c603          	lbu	a2,5(a1)
    800082ec:	00500713          	li	a4,5
    800082f0:	00c782a3          	sb	a2,5(a5)
    800082f4:	00e68663          	beq	a3,a4,80008300 <__memmove+0xfc>
    800082f8:	0065c703          	lbu	a4,6(a1)
    800082fc:	00e78323          	sb	a4,6(a5)
    80008300:	00813403          	ld	s0,8(sp)
    80008304:	01010113          	addi	sp,sp,16
    80008308:	00008067          	ret
    8000830c:	02061713          	slli	a4,a2,0x20
    80008310:	02075713          	srli	a4,a4,0x20
    80008314:	00e587b3          	add	a5,a1,a4
    80008318:	f0f574e3          	bgeu	a0,a5,80008220 <__memmove+0x1c>
    8000831c:	02069613          	slli	a2,a3,0x20
    80008320:	02065613          	srli	a2,a2,0x20
    80008324:	fff64613          	not	a2,a2
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00c78633          	add	a2,a5,a2
    80008330:	fff7c683          	lbu	a3,-1(a5)
    80008334:	fff78793          	addi	a5,a5,-1
    80008338:	fff70713          	addi	a4,a4,-1
    8000833c:	00d70023          	sb	a3,0(a4)
    80008340:	fec798e3          	bne	a5,a2,80008330 <__memmove+0x12c>
    80008344:	00813403          	ld	s0,8(sp)
    80008348:	01010113          	addi	sp,sp,16
    8000834c:	00008067          	ret
    80008350:	02069713          	slli	a4,a3,0x20
    80008354:	02075713          	srli	a4,a4,0x20
    80008358:	00170713          	addi	a4,a4,1
    8000835c:	00e50733          	add	a4,a0,a4
    80008360:	00050793          	mv	a5,a0
    80008364:	0005c683          	lbu	a3,0(a1)
    80008368:	00178793          	addi	a5,a5,1
    8000836c:	00158593          	addi	a1,a1,1
    80008370:	fed78fa3          	sb	a3,-1(a5)
    80008374:	fee798e3          	bne	a5,a4,80008364 <__memmove+0x160>
    80008378:	f89ff06f          	j	80008300 <__memmove+0xfc>
	...
